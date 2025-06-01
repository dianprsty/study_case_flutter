import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_model.freezed.dart';

@freezed
abstract class GenreModel with _$GenreModel {
  factory GenreModel({@Default(0) int count, @Default('') String genre}) =
      _GenreModel;
}
