// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Pagination _$PaginationFromJson(Map<String, dynamic> json) => _Pagination(
  currentPage: (json['currentPage'] as num?)?.toInt(),
  totalPages: (json['totalPages'] as num?)?.toInt(),
  totalItems: (json['totalItems'] as num?)?.toInt(),
  itemsPerPage: (json['itemsPerPage'] as num?)?.toInt(),
  hasNextPage: json['hasNextPage'] as bool?,
  hasPrevPage: json['hasPrevPage'] as bool?,
);

Map<String, dynamic> _$PaginationToJson(_Pagination instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'totalItems': instance.totalItems,
      'itemsPerPage': instance.itemsPerPage,
      'hasNextPage': instance.hasNextPage,
      'hasPrevPage': instance.hasPrevPage,
    };
