import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';

@freezed
abstract class BookModel with _$BookModel {
  factory BookModel({
    required String id,
    required String title,
    required String coverImage,
    required String author,
    required String category,
    required String summary,
    required String publisher,
    required String price,
    required String noGm,
    required String isbn,
    required String totalPages,
    required String size,
    required String publishedDate,
    required String format,
  }) = _BookModel;
}
