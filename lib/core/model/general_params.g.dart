// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeneralParams _$GeneralParamsFromJson(Map<String, dynamic> json) =>
    _GeneralParams(
      page: (json['page'] as num?)?.toInt(),
      sort: json['sort'] as String?,
      year: (json['year'] as num?)?.toInt(),
      genre: json['genre'] as String?,
      keyword: json['keyword'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GeneralParamsToJson(_GeneralParams instance) =>
    <String, dynamic>{
      if (instance.page case final value?) 'page': value,
      if (instance.sort case final value?) 'sort': value,
      if (instance.year case final value?) 'year': value,
      if (instance.genre case final value?) 'genre': value,
      if (instance.keyword case final value?) 'keyword': value,
      if (instance.limit case final value?) 'limit': value,
    };
