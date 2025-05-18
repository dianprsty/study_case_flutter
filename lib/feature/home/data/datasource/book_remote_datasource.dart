import 'package:study_case/core/model/result.dart';
import 'package:study_case/core/service/api_service.dart';
import 'package:study_case/feature/home/data/model/book_list_response.dart';

abstract class IBookRemoteDatasource {
  Future<Result<BookListResponse>> getBookByCategory(String category);
}

class BookRemoteDatasourceImpl extends IBookRemoteDatasource {
  final ApiService _apiService;

  BookRemoteDatasourceImpl({required ApiService apiService})
    : _apiService = apiService;
  @override
  Future<Result<BookListResponse>> getBookByCategory(String category) async {
    try {
      Map<String, String> queryParams = {};
      if (category.isNotEmpty) queryParams['genre'] = category;
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
}
