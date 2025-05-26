part of 'book_bloc.dart';

@freezed
abstract class BookEvent with _$BookEvent {
  const factory BookEvent.getBookByCategory(GeneralParams params) =
      _GetBookByCategory;
}
