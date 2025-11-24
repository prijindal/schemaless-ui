import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../db/api_from_server.dart';
import '../../db/database.dart';
import '../../helpers/listify_stream.dart';
import '../../helpers/parse_errors.dart';
import '../../schemaless_proto/google/protobuf/empty.pb.dart';
import '../../schemaless_proto/management/services.pb.dart';
import '../errors/error_screen.dart';

class ApplicationsList extends StatelessWidget {
  const ApplicationsList({super.key, required this.server});

  final ServerInfoData server;
  ManagementApiFromServerInfo get api => ManagementApiFromServerInfo(server);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: listifyStream(api.applicationClient.streamApplications(Empty())),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: false);
        }
        final applications = snapshot.data;
        if (applications == null || applications.isEmpty) {
          return Center(child: Text("No Applications found"));
        }
        return ListView(
          children:
              applications
                  .map(
                    (application) => ListTile(
                      title: Text(application.name),
                      subtitle: Text(application.iD),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder:
                                (context) => _ApplicationScreen(
                                  server: server,
                                  application: application,
                                ),
                          ),
                        );
                      },
                    ),
                  )
                  .toList(),
        );
      },
    );
  }
}

class _ApplicationScreen extends StatefulWidget {
  const _ApplicationScreen({required this.server, required this.application});
  final ServerInfoData server;
  final Application application;

  @override
  State<_ApplicationScreen> createState() => _ApplicationScreenState();
}

class _ApplicationScreenState extends State<_ApplicationScreen> {
  int currentPageIndex = 0;
  ManagementApiFromServerInfo get api =>
      ManagementApiFromServerInfo(widget.server);

  Widget _buildDomainsList() {
    return StreamBuilder(
      stream: listifyStream(
        api.applicationDomainClient.streamApplicationDomains(
          StreamApplicationDomainRequest(applicationID: widget.application.iD),
        ),
      ),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen(error: snapshot.error!, scaffold: false);
        }
        final domains = snapshot.data;
        return (domains == null || domains.isEmpty)
            ? Center(child: Text("No Domains found"))
            : ListView(
              children:
                  domains
                      .map(
                        (domain) => ListTile(
                          title: Text(domain.domainName),
                          subtitle: Text(
                            "status: ${domain.status}, createdAt: ${domain.createdAt}",
                          ),
                          trailing: PopupMenuButton(
                            itemBuilder:
                                (context) => [
                                  PopupMenuItem<void>(
                                    child: Text("Verify"),
                                    onTap: () async {
                                      try {
                                        await api.applicationDomainClient
                                            .verifyDomain(
                                              GetDomainRequest(
                                                domainID: domain.iD,
                                              ),
                                            );
                                        ScaffoldMessenger.of(
                                          // ignore: use_build_context_synchronously
                                          context,
                                        ).showSnackBar(
                                          SnackBar(
                                            content: Text("Domain verified"),
                                          ),
                                        );
                                      } on Exception catch (e) {
                                        await parseErrors(
                                          // ignore: use_build_context_synchronously
                                          context,
                                          e,
                                        );
                                      }
                                    },
                                  ),
                                ],
                          ),
                        ),
                      )
                      .toList(),
            );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.application.name),
        actions: [
          PopupMenuButton(
            itemBuilder:
                (context) => [
                  PopupMenuItem<void>(
                    child: Text("Open Web UI"),
                    onTap: () async {
                      Clipboard.setData(
                        ClipboardData(text: widget.application.iD),
                      );
                    },
                  ),
                ],
          ),
        ],
      ),
      body: [_buildDomainsList()].elementAt(currentPageIndex),
      // bottomNavigationBar: NavigationBar(
      //   onDestinationSelected: (int index) {
      //     setState(() {
      //       currentPageIndex = index;
      //     });
      //   },
      //   selectedIndex: currentPageIndex,
      //   destinations: [
      //     NavigationDestination(icon: Icon(Icons.domain), label: "Domains"),
      //   ],
      // ),
    );
  }
}
