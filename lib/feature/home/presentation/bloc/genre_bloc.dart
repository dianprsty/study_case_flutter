import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:study_case/core/model/general_state.dart';
import 'package:study_case/feature/home/domain/entities/genre_model.dart';
import 'package:study_case/feature/home/domain/usecase/get_genre_usecase.dart';

part 'genre_event.dart';
part 'genre_state.dart';
part 'genre_bloc.freezed.dart';

class GenreBloc extends Bloc<GenreEvent, GenreState> {
  final GetGenreUsecase _getGenreUsecase;
  GenreBloc({required GetGenreUsecase getGenreUsecase})
    : _getGenreUsecase = getGenreUsecase,
      super(GenreState()) {
    on<_GetGenre>(_getGenre);
    on<_SetGenre>(_setGenre);
  }

  void _getGenre(event, emit) async {
    emit(state.copyWith(status: GeneralState.loading()));

    final result = await _getGenreUsecase.call(null);

    if (result.isSuccess) {
      emit(
        state.copyWith(
          status: GeneralState.success(),
          genres: result.value ?? [],
        ),
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

  void _setGenre(_SetGenre event, emit) {
    emit(state.copyWith(selectedGenre: event.genre));
  }
}
