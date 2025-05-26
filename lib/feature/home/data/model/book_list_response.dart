import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:study_case/core/model/pagination.dart';
import 'package:study_case/feature/home/domain/entities/book_model.dart';

part 'book_list_response.freezed.dart';
part 'book_list_response.g.dart';

@freezed
abstract class BookListResponse with _$BookListResponse {
  const factory BookListResponse({
    @JsonKey(name: "books") List<Book>? books,
    @JsonKey(name: "pagination") Pagination? pagination,
  }) = _BookListResponse;

  factory BookListResponse.fromJson(Map<String, dynamic> json) =>
      _$BookListResponseFromJson(json);
}

@freezed
abstract class Book with _$Book {
  const factory Book({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "cover_image") String? coverImage,
    @JsonKey(name: "author") Author? author,
    @JsonKey(name: "category") Author? category,
    @JsonKey(name: "summary") String? summary,
    @JsonKey(name: "details") Details? details,
    @JsonKey(name: "tags") List<Author>? tags,
    @JsonKey(name: "buy_links") List<BuyLink>? buyLinks,
    @JsonKey(name: "publisher") String? publisher,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}

@freezed
abstract class Author with _$Author {
  const factory Author({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "url") String? url,
  }) = _Author;

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
}

@freezed
abstract class BuyLink with _$BuyLink {
  const factory BuyLink({
    @JsonKey(name: "store") String? store,
    @JsonKey(name: "url") String? url,
  }) = _BuyLink;

  factory BuyLink.fromJson(Map<String, dynamic> json) =>
      _$BuyLinkFromJson(json);
}

@freezed
abstract class Details with _$Details {
  const factory Details({
    @JsonKey(name: "no_gm") String? noGm,
    @JsonKey(name: "isbn") String? isbn,
    @JsonKey(name: "price") String? price,
    @JsonKey(name: "total_pages") String? totalPages,
    @JsonKey(name: "size") String? size,
    @JsonKey(name: "published_date") String? publishedDate,
    @JsonKey(name: "format") String? format,
  }) = _Details;

  factory Details.fromJson(Map<String, dynamic> json) =>
      _$DetailsFromJson(json);
}

extension BookExtension on Book {
  BookModel toBookModel() {
    return BookModel(
      id: id ?? '',
      title: title ?? '',
      coverImage: coverImage ?? '',
      author: author?.name ?? '',
      category: category?.name ?? '',
      summary: summary ?? '',
      publisher: publisher ?? '',
      price: details?.price ?? '',
      noGm: details?.noGm ?? '',
      isbn: details?.isbn ?? '',
      totalPages: details?.totalPages ?? '',
      size: details?.size ?? '',
      publishedDate: details?.publishedDate ?? '',
      format: details?.format ?? '',
    );
  }
}
