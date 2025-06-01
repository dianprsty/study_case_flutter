part of 'genre_bloc.dart';

@freezed
abstract class GenreState with _$GenreState {
  const factory GenreState({
    @Default(GeneralState.initial()) GeneralState status,
    @Default([]) List<GenreModel> genres,
    String? errorMessage,
    String? selectedGenre,
  }) = _GenreState;
}
