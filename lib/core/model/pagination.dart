import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@freezed
abstract class Pagination with _$Pagination {
  const factory Pagination({
    @JsonKey(name: "currentPage") int? currentPage,
    @JsonKey(name: "totalPages") int? totalPages,
    @JsonKey(name: "totalItems") int? totalItems,
    @JsonKey(name: "itemsPerPage") int? itemsPerPage,
    @JsonKey(name: "hasNextPage") bool? hasNextPage,
    @JsonKey(name: "hasPrevPage") bool? hasPrevPage,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
