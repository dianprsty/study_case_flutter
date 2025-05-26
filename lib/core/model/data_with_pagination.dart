import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:study_case/core/model/pagination.dart';

part 'data_with_pagination.freezed.dart';

@freezed
abstract class DataWithPagination<T> with _$DataWithPagination<T> {
  factory DataWithPagination({
    required List<T> data,
    required Pagination pagination,
  }) = _DataWithPagination<T>;
}
