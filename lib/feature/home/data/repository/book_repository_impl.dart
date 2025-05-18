import 'package:study_case/core/model/result.dart';
import 'package:study_case/feature/home/data/datasource/book_remote_datasource.dart';
import 'package:study_case/feature/home/data/model/book_list_response.dart';
import 'package:study_case/feature/home/domain/entities/book_model.dart';
import 'package:study_case/feature/home/domain/repository/book_repository.dart';

class BookRepositoryImpl extends IBookRepository {
  final IBookRemoteDatasource _bookRemoteDatasource;

  BookRepositoryImpl({required IBookRemoteDatasource bookRemoteDatasource})
    : _bookRemoteDatasource = bookRemoteDatasource;
  @override
  Future<Result<List<BookModel>>> getBookByCategory(String category) async {
    final result = await _bookRemoteDatasource.getBookByCategory(category);

    if (result.isSuccess) {
      final books =
          result.value!.books?.map((book) => book.toBookModel()).toList() ?? [];
      return Result.success(books);
    } else {
      return Result.failed(
        result.errorMessage ?? 'get book by category failed',
      );
    }
  }
}
