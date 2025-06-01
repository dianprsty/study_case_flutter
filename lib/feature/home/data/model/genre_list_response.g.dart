// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GenreListResponse _$GenreListResponseFromJson(Map<String, dynamic> json) =>
    _GenreListResponse(
      genreStatistics:
          (json['genre_statistics'] as List<dynamic>?)
              ?.map((e) => GenreStatistic.fromJson(e as Map<String, dynamic>))
              .toList(),
      totalGenres: (json['total_genres'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GenreListResponseToJson(_GenreListResponse instance) =>
    <String, dynamic>{
      'genre_statistics': instance.genreStatistics,
      'total_genres': instance.totalGenres,
    };

_GenreStatistic _$GenreStatisticFromJson(Map<String, dynamic> json) =>
    _GenreStatistic(
      count: (json['count'] as num?)?.toInt(),
      genre: json['genre'] as String?,
    );

Map<String, dynamic> _$GenreStatisticToJson(_GenreStatistic instance) =>
    <String, dynamic>{'count': instance.count, 'genre': instance.genre};
