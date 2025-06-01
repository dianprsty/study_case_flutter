import 'package:study_case/core/model/data_with_pagination.dart';
import 'package:study_case/core/model/general_params.dart';
import 'package:study_case/core/model/pagination.dart';
import 'package:study_case/core/model/result.dart';
import 'package:study_case/feature/home/data/datasource/book_remote_datasource.dart';
import 'package:study_case/feature/home/data/model/book_list_response.dart';
import 'package:study_case/feature/home/data/model/genre_list_response.dart';
import 'package:study_case/feature/home/domain/entities/book_model.dart';
import 'package:study_case/feature/home/domain/entities/genre_model.dart';
import 'package:study_case/feature/home/domain/repository/book_repository.dart';

class BookRepositoryImpl extends IBookRepository {
  final IBookRemoteDatasource _bookRemoteDatasource;

  BookRepositoryImpl({required IBookRemoteDatasource bookRemoteDatasource})
    : _bookRemoteDatasource = bookRemoteDatasource;
  @override
  Future<Result<DataWithPagination<BookModel>>> getBookByCategory(
    GeneralParams params,
  ) async {
    final result = await _bookRemoteDatasource.getBookByCategory(params);

    if (result.isSuccess) {
      final books =
          result.value!.books?.map((book) => book.toBookModel()).toList() ?? [];

      final pagination = result.value?.pagination ?? Pagination();
      final returnData = DataWithPagination<BookModel>(
        data: books,
        pagination: pagination,
      );
      return Result.success(returnData);
    } else {
      return Result.failed(
        result.errorMessage ?? 'get book by category failed',
      );
    }
  }

  @override
  Future<Result<List<GenreModel>>> getGenre() async {
    final result = await _bookRemoteDatasource.getGenre();

    if (result.isSuccess) {
      final genres =
          result.value?.genreStatistics
              ?.map((genre) => genre.toGenreModel())
              .toList() ??
          [];

      return Result.success(genres);
    } else {
      return Result.failed(result.errorMessage ?? 'get genre failed');
    }
  }
}
