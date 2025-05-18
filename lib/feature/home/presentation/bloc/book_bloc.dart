import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:study_case/core/model/general_state.dart';
import 'package:study_case/feature/home/domain/entities/book_model.dart';
import 'package:study_case/feature/home/domain/repository/book_repository.dart';

part 'book_event.dart';
part 'book_state.dart';
part 'book_bloc.freezed.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  final IBookRepository _bookRepository;

  BookBloc({required IBookRepository bookRepository})
    : _bookRepository = bookRepository,
      super(BookState()) {
    on<_GetBookByCategory>(_getBookByCategory);
  }

  void _getBookByCategory(
    _GetBookByCategory event,
    Emitter<BookState> emit,
  ) async {
    emit(state.copyWith(status: GeneralState.loading()));

    final result = await _bookRepository.getBookByCategory(event.category);

    if (result.isSuccess) {
      emit(
        state.copyWith(books: result.value!, status: GeneralState.success()),
      );
    } else {
      emit(
        state.copyWith(
          errorMessage: result.errorMessage,
          status: GeneralState.error(),
        ),
      );
    }
  }
}
