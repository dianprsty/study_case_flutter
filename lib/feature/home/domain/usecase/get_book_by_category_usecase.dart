import 'package:study_case/core/model/data_with_pagination.dart';
import 'package:study_case/core/model/general_params.dart';
import 'package:study_case/core/model/result.dart';
import 'package:study_case/core/model/usecase.dart';
import 'package:study_case/feature/home/domain/entities/book_model.dart';
import 'package:study_case/feature/home/domain/repository/book_repository.dart';

class GetBookByCategoryUsecase
    extends Usecase<Result<DataWithPagination<BookModel>>, GeneralParams> {
  final IBookRepository _bookRepository;

  GetBookByCategoryUsecase({required IBookRepository bookRepository})
    : _bookRepository = bookRepository;
  @override
  Future<Result<DataWithPagination<BookModel>>> call(GeneralParams params) {
    return _bookRepository.getBookByCategory(params);
  }
}
