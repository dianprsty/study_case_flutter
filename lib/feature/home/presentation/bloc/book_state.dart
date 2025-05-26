part of 'book_bloc.dart';

@freezed
abstract class BookState with _$BookState {
  factory BookState({
    @Default(GeneralState.initial()) GeneralState status,
    @Default([]) List<BookModel> books,
    @Default(Pagination()) Pagination pagination,
    @Default(GeneralParams()) GeneralParams params,

    String? errorMessage,
  }) = _BookState;
}
