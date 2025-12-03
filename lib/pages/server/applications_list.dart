import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../db/api_from_server.dart';
import '../../db/database.dart';
import '../../helpers/listify_stream.dart';
import '../../helpers/parse_errors.dart';
import '../../schemaless_proto/management_services/v1/services.pb.dart';
import '../errors/error_screen.dart';

class ApplicationsList extends StatelessWidget {
  const ApplicationsList({super.key, required this.server});

  final ServerInfoData server;
  ManagementApiFromServerInfo get api => ManagementApiFromServerInfo(server);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: listifyStream(
        api.applicationClient.streamApplications(StreamApplicationsRequest()),
      ),
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
                    (res) => ListTile(
                      title: Text(res.application.name),
                      subtitle: Text(res.application.id),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder:
                                (context) => _ApplicationScreen(
                                  server: server,
                                  application: res.application,
                                ),
                          ),
                        );
                      },
                      trailing: PopupMenuButton(
                        itemBuilder:
                            (context) => [
                              PopupMenuItem<void>(
                                child: Text("Deploy"),
                                onTap: () async {
                                  try {
                                    await api.applicationClient
                                        .deployApplication(
                                          DeployApplicationRequest(
                                            applicationId: res.application.id,
                                          ),
                                        );
                                    ScaffoldMessenger.of(
                                      // ignore: use_build_context_synchronously
                                      context,
                                    ).showSnackBar(
                                      SnackBar(
                                        content: Text("Application deployed"),
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
                              PopupMenuItem<void>(
                                child: Text("Delete"),
                                onTap: () async {
                                  try {
                                    await api.applicationClient
                                        .deleteApplication(
                                          DeleteApplicationRequest(
                                            id: res.application.id,
                                          ),
                                        );
                                    ScaffoldMessenger.of(
                                      // ignore: use_build_context_synchronously
                                      context,
                                    ).showSnackBar(
                                      SnackBar(
                                        content: Text("Application deleted"),
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
          StreamApplicationDomainsRequest(applicationId: widget.application.id),
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
                        (res) => ListTile(
                          title: Text(res.domain.domainName),
                          subtitle: Text(
                            "status: ${res.domain.status}, createdAt: ${res.domain.createdAt}",
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
                                              VerifyDomainRequest(
                                                domainId: res.domain.id,
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
                        ClipboardData(text: widget.application.id),
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
