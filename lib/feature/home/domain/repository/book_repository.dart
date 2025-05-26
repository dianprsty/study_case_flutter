import 'package:study_case/core/model/data_with_pagination.dart';
import 'package:study_case/core/model/general_params.dart';
import 'package:study_case/core/model/result.dart';
import 'package:study_case/feature/home/domain/entities/book_model.dart';

abstract class IBookRepository {
  Future<Result<DataWithPagination<BookModel>>> getBookByCategory(
    GeneralParams params,
  );
}
