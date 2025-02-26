class RefreshFutureResponse<T> {
  T result;
  void Function()? refresh;

  RefreshFutureResponse({required this.result});

  void setResult(T newData) {
    this.result = newData;
  }

  void setRefresh(void Function() newRefresh) {
    this.refresh = newRefresh;
  }
}

Future<RefreshFutureResponse<T>> buildRefreshFuture<T>(
  Future<T> Function() futureBuilder,
) {
  return Future<RefreshFutureResponse<T>>(() async {
    final data = await futureBuilder();
    final refreshFuture = RefreshFutureResponse(result: data);
    refreshFuture.setRefresh(() async {
      final newData = await futureBuilder();
      refreshFuture.setResult(newData);
    });
    return refreshFuture;
  });
}
