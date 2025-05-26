// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookListResponse _$BookListResponseFromJson(Map<String, dynamic> json) =>
    _BookListResponse(
      books:
          (json['books'] as List<dynamic>?)
              ?.map((e) => Book.fromJson(e as Map<String, dynamic>))
              .toList(),
      pagination:
          json['pagination'] == null
              ? null
              : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookListResponseToJson(_BookListResponse instance) =>
    <String, dynamic>{
      'books': instance.books,
      'pagination': instance.pagination,
    };

_Book _$BookFromJson(Map<String, dynamic> json) => _Book(
  id: json['_id'] as String?,
  title: json['title'] as String?,
  coverImage: json['cover_image'] as String?,
  author:
      json['author'] == null
          ? null
          : Author.fromJson(json['author'] as Map<String, dynamic>),
  category:
      json['category'] == null
          ? null
          : Author.fromJson(json['category'] as Map<String, dynamic>),
  summary: json['summary'] as String?,
  details:
      json['details'] == null
          ? null
          : Details.fromJson(json['details'] as Map<String, dynamic>),
  tags:
      (json['tags'] as List<dynamic>?)
          ?.map((e) => Author.fromJson(e as Map<String, dynamic>))
          .toList(),
  buyLinks:
      (json['buy_links'] as List<dynamic>?)
          ?.map((e) => BuyLink.fromJson(e as Map<String, dynamic>))
          .toList(),
  publisher: json['publisher'] as String?,
);

Map<String, dynamic> _$BookToJson(_Book instance) => <String, dynamic>{
  '_id': instance.id,
  'title': instance.title,
  'cover_image': instance.coverImage,
  'author': instance.author,
  'category': instance.category,
  'summary': instance.summary,
  'details': instance.details,
  'tags': instance.tags,
  'buy_links': instance.buyLinks,
  'publisher': instance.publisher,
};

_Author _$AuthorFromJson(Map<String, dynamic> json) =>
    _Author(name: json['name'] as String?, url: json['url'] as String?);

Map<String, dynamic> _$AuthorToJson(_Author instance) => <String, dynamic>{
  'name': instance.name,
  'url': instance.url,
};

_BuyLink _$BuyLinkFromJson(Map<String, dynamic> json) =>
    _BuyLink(store: json['store'] as String?, url: json['url'] as String?);

Map<String, dynamic> _$BuyLinkToJson(_BuyLink instance) => <String, dynamic>{
  'store': instance.store,
  'url': instance.url,
};

_Details _$DetailsFromJson(Map<String, dynamic> json) => _Details(
  noGm: json['no_gm'] as String?,
  isbn: json['isbn'] as String?,
  price: json['price'] as String?,
  totalPages: json['total_pages'] as String?,
  size: json['size'] as String?,
  publishedDate: json['published_date'] as String?,
  format: json['format'] as String?,
);

Map<String, dynamic> _$DetailsToJson(_Details instance) => <String, dynamic>{
  'no_gm': instance.noGm,
  'isbn': instance.isbn,
  'price': instance.price,
  'total_pages': instance.totalPages,
  'size': instance.size,
  'published_date': instance.publishedDate,
  'format': instance.format,
};
