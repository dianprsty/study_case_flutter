import 'package:study_case/core/model/result.dart';
import 'package:study_case/core/model/usecase.dart';
import 'package:study_case/feature/home/domain/entities/genre_model.dart';
import 'package:study_case/feature/home/domain/repository/book_repository.dart';

class GetGenreUsecase extends Usecase<Result<List<GenreModel>>, void> {
  final IBookRepository _bookRepository;

  GetGenreUsecase({required IBookRepository bookRepository})
    : _bookRepository = bookRepository;
  @override
  Future<Result<List<GenreModel>>> call(void params) {
    return _bookRepository.getGenre();
  }
}
