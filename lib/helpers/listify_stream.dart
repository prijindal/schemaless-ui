Stream<List<T>> listifyStream<T>(Stream<T> source) async* {
  List<T> buffer = [];
  await for (final item in source) {
    buffer.add(item);
    yield List<T>.from(buffer); // Create a new list to avoid modification
  }
  // Emit any remaining items in the buffer at the end
  if (buffer.isNotEmpty) {
    yield List<T>.from(buffer);
  }
}
