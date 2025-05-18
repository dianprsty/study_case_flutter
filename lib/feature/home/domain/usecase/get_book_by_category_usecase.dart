import 'package:study_case/core/model/result.dart';
import 'package:study_case/core/model/usecase.dart';
import 'package:study_case/feature/home/domain/entities/book_model.dart';
import 'package:study_case/feature/home/domain/repository/book_repository.dart';

class GetBookByCategoryUsecase
    extends Usecase<Result<List<BookModel>>, String> {
  final IBookRepository _bookRepository;

  GetBookByCategoryUsecase({required IBookRepository bookRepository})
    : _bookRepository = bookRepository;
  @override
  Future<Result<List<BookModel>>> call(String params) {
    return _bookRepository.getBookByCategory(params);
  }
}
