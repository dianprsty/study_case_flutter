import 'package:dio/dio.dart';

import 'package:study_case/core/model/general_params.dart';
import 'package:study_case/core/model/result.dart';
import 'package:study_case/core/service/api_service.dart';
import 'package:study_case/feature/home/data/model/book_list_response.dart';
import 'package:study_case/feature/home/data/model/genre_list_response.dart';

abstract class IBookRemoteDatasource {
  Future<Result<BookListResponse>> getBookByCategory(GeneralParams params);

  Future<Result<GenreListResponse>> getGenre();
}

class BookRemoteDatasourceImpl extends IBookRemoteDatasource {
  final ApiService _apiService;

  BookRemoteDatasourceImpl({required ApiService apiService})
    : _apiService = apiService;
  @override
  Future<Result<BookListResponse>> getBookByCategory(
    GeneralParams params,
  ) async {
    try {
      Map<String, dynamic> queryParams = params.toJson();
      final result = await _apiService.get(
        path: '/book',
        queryParams: queryParams,
      );
      if (result.statusCode == 200 && result.data != null) {
        final bookListResponse = BookListResponse.fromJson(result.data);
        return Result.success(bookListResponse);
      } else {
        return Result.failed('get book by category failed');
      }
    } catch (e) {
      return Result.failed(e.toString());
    }
  }

  @override
  Future<Result<GenreListResponse>> getGenre() async {
    try {
      final result = await _apiService.get(path: '/stats/genre');

      if (result.statusCode == 200 && result.data != null) {
        return Result.success(GenreListResponse.fromJson(result.data));
      } else {
        return Result.failed('get genre failed');
      }
    } catch (e) {
      return Result.failed(e.toString());
    }
  }
}
