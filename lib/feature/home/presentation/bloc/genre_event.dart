part of 'genre_bloc.dart';

@freezed
class GenreEvent with _$GenreEvent {
  const factory GenreEvent.getGenre() = _GetGenre;
  const factory GenreEvent.setGenre(String genre) = _SetGenre;
}
