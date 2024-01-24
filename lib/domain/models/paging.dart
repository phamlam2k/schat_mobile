class Paging<T> {
  Paging({required this.totalResults, required this.data, this.rowsPerPage, this.pageNumber});

  int totalResults;
  List<T> data;
  int? pageNumber;
  int? rowsPerPage;

  Paging<T> copyWith({
    int? totalResults,
    List<T>? data,
    int? pageNumber,
    int? rowsPerPage,
  }) =>
      Paging<T>(
        totalResults: totalResults ?? this.totalResults,
        data: data ?? this.data,
        pageNumber: pageNumber ?? this.pageNumber,
        rowsPerPage: rowsPerPage ?? this.rowsPerPage,
      );

  bool get hasMore => (pageNumber ?? 0) + 1 <= (totalResults / (rowsPerPage ?? 1)).ceil();

  int get currentStart => ((pageNumber ?? 0) - 1) * (rowsPerPage ?? 0) + 1;

  int get currentEnd => hasMore ? ((pageNumber ?? 0)) * (rowsPerPage ?? 0) : totalResults;
}
