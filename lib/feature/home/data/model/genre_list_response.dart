import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:study_case/feature/home/domain/entities/genre_model.dart';

part 'genre_list_response.freezed.dart';
part 'genre_list_response.g.dart';

@freezed
abstract class GenreListResponse with _$GenreListResponse {
  const factory GenreListResponse({
    @JsonKey(name: "genre_statistics") List<GenreStatistic>? genreStatistics,
    @JsonKey(name: "total_genres") int? totalGenres,
  }) = _GenreListResponse;

  factory GenreListResponse.fromJson(Map<String, dynamic> json) =>
      _$GenreListResponseFromJson(json);
}

@freezed
abstract class GenreStatistic with _$GenreStatistic {
  const factory GenreStatistic({
    @JsonKey(name: "count") int? count,
    @JsonKey(name: "genre") String? genre,
  }) = _GenreStatistic;

  factory GenreStatistic.fromJson(Map<String, dynamic> json) =>
      _$GenreStatisticFromJson(json);
}

extension GenreStatisticExtension on GenreStatistic {
  GenreModel toGenreModel() {
    return GenreModel(count: count ?? 0, genre: genre ?? '');
  }
}
