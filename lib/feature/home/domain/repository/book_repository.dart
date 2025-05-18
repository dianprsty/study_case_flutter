import 'package:study_case/core/model/result.dart';
import 'package:study_case/feature/home/domain/entities/book_model.dart';

abstract class IBookRepository {
  Future<Result<List<BookModel>>> getBookByCategory(String category);
}
