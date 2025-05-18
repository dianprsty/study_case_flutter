// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookModel {

 String get id; String get title; String get coverImage; String get author; String get category; String get summary; String get publisher; String get price; String get noGm; String get isbn; String get totalPages; String get size; String get publishedDate; String get format;
/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookModelCopyWith<BookModel> get copyWith => _$BookModelCopyWithImpl<BookModel>(this as BookModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.author, author) || other.author == author)&&(identical(other.category, category) || other.category == category)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.publisher, publisher) || other.publisher == publisher)&&(identical(other.price, price) || other.price == price)&&(identical(other.noGm, noGm) || other.noGm == noGm)&&(identical(other.isbn, isbn) || other.isbn == isbn)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.size, size) || other.size == size)&&(identical(other.publishedDate, publishedDate) || other.publishedDate == publishedDate)&&(identical(other.format, format) || other.format == format));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,coverImage,author,category,summary,publisher,price,noGm,isbn,totalPages,size,publishedDate,format);

@override
String toString() {
  return 'BookModel(id: $id, title: $title, coverImage: $coverImage, author: $author, category: $category, summary: $summary, publisher: $publisher, price: $price, noGm: $noGm, isbn: $isbn, totalPages: $totalPages, size: $size, publishedDate: $publishedDate, format: $format)';
}


}

/// @nodoc
abstract mixin class $BookModelCopyWith<$Res>  {
  factory $BookModelCopyWith(BookModel value, $Res Function(BookModel) _then) = _$BookModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String coverImage, String author, String category, String summary, String publisher, String price, String noGm, String isbn, String totalPages, String size, String publishedDate, String format
});




}
/// @nodoc
class _$BookModelCopyWithImpl<$Res>
    implements $BookModelCopyWith<$Res> {
  _$BookModelCopyWithImpl(this._self, this._then);

  final BookModel _self;
  final $Res Function(BookModel) _then;

/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? coverImage = null,Object? author = null,Object? category = null,Object? summary = null,Object? publisher = null,Object? price = null,Object? noGm = null,Object? isbn = null,Object? totalPages = null,Object? size = null,Object? publishedDate = null,Object? format = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,coverImage: null == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,publisher: null == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,noGm: null == noGm ? _self.noGm : noGm // ignore: cast_nullable_to_non_nullable
as String,isbn: null == isbn ? _self.isbn : isbn // ignore: cast_nullable_to_non_nullable
as String,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as String,publishedDate: null == publishedDate ? _self.publishedDate : publishedDate // ignore: cast_nullable_to_non_nullable
as String,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _BookModel implements BookModel {
   _BookModel({required this.id, required this.title, required this.coverImage, required this.author, required this.category, required this.summary, required this.publisher, required this.price, required this.noGm, required this.isbn, required this.totalPages, required this.size, required this.publishedDate, required this.format});
  

@override final  String id;
@override final  String title;
@override final  String coverImage;
@override final  String author;
@override final  String category;
@override final  String summary;
@override final  String publisher;
@override final  String price;
@override final  String noGm;
@override final  String isbn;
@override final  String totalPages;
@override final  String size;
@override final  String publishedDate;
@override final  String format;

/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookModelCopyWith<_BookModel> get copyWith => __$BookModelCopyWithImpl<_BookModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.author, author) || other.author == author)&&(identical(other.category, category) || other.category == category)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.publisher, publisher) || other.publisher == publisher)&&(identical(other.price, price) || other.price == price)&&(identical(other.noGm, noGm) || other.noGm == noGm)&&(identical(other.isbn, isbn) || other.isbn == isbn)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.size, size) || other.size == size)&&(identical(other.publishedDate, publishedDate) || other.publishedDate == publishedDate)&&(identical(other.format, format) || other.format == format));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,coverImage,author,category,summary,publisher,price,noGm,isbn,totalPages,size,publishedDate,format);

@override
String toString() {
  return 'BookModel(id: $id, title: $title, coverImage: $coverImage, author: $author, category: $category, summary: $summary, publisher: $publisher, price: $price, noGm: $noGm, isbn: $isbn, totalPages: $totalPages, size: $size, publishedDate: $publishedDate, format: $format)';
}


}

/// @nodoc
abstract mixin class _$BookModelCopyWith<$Res> implements $BookModelCopyWith<$Res> {
  factory _$BookModelCopyWith(_BookModel value, $Res Function(_BookModel) _then) = __$BookModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String coverImage, String author, String category, String summary, String publisher, String price, String noGm, String isbn, String totalPages, String size, String publishedDate, String format
});




}
/// @nodoc
class __$BookModelCopyWithImpl<$Res>
    implements _$BookModelCopyWith<$Res> {
  __$BookModelCopyWithImpl(this._self, this._then);

  final _BookModel _self;
  final $Res Function(_BookModel) _then;

/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? coverImage = null,Object? author = null,Object? category = null,Object? summary = null,Object? publisher = null,Object? price = null,Object? noGm = null,Object? isbn = null,Object? totalPages = null,Object? size = null,Object? publishedDate = null,Object? format = null,}) {
  return _then(_BookModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,coverImage: null == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,publisher: null == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,noGm: null == noGm ? _self.noGm : noGm // ignore: cast_nullable_to_non_nullable
as String,isbn: null == isbn ? _self.isbn : isbn // ignore: cast_nullable_to_non_nullable
as String,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as String,publishedDate: null == publishedDate ? _self.publishedDate : publishedDate // ignore: cast_nullable_to_non_nullable
as String,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
