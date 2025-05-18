// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookListResponse {

@JsonKey(name: "books") List<Book>? get books;@JsonKey(name: "pagination") Pagination? get pagination;
/// Create a copy of BookListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookListResponseCopyWith<BookListResponse> get copyWith => _$BookListResponseCopyWithImpl<BookListResponse>(this as BookListResponse, _$identity);

  /// Serializes this BookListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookListResponse&&const DeepCollectionEquality().equals(other.books, books)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(books),pagination);

@override
String toString() {
  return 'BookListResponse(books: $books, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $BookListResponseCopyWith<$Res>  {
  factory $BookListResponseCopyWith(BookListResponse value, $Res Function(BookListResponse) _then) = _$BookListResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "books") List<Book>? books,@JsonKey(name: "pagination") Pagination? pagination
});


$PaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$BookListResponseCopyWithImpl<$Res>
    implements $BookListResponseCopyWith<$Res> {
  _$BookListResponseCopyWithImpl(this._self, this._then);

  final BookListResponse _self;
  final $Res Function(BookListResponse) _then;

/// Create a copy of BookListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? books = freezed,Object? pagination = freezed,}) {
  return _then(_self.copyWith(
books: freezed == books ? _self.books : books // ignore: cast_nullable_to_non_nullable
as List<Book>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,
  ));
}
/// Create a copy of BookListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $PaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _BookListResponse implements BookListResponse {
  const _BookListResponse({@JsonKey(name: "books") final  List<Book>? books, @JsonKey(name: "pagination") this.pagination}): _books = books;
  factory _BookListResponse.fromJson(Map<String, dynamic> json) => _$BookListResponseFromJson(json);

 final  List<Book>? _books;
@override@JsonKey(name: "books") List<Book>? get books {
  final value = _books;
  if (value == null) return null;
  if (_books is EqualUnmodifiableListView) return _books;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "pagination") final  Pagination? pagination;

/// Create a copy of BookListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookListResponseCopyWith<_BookListResponse> get copyWith => __$BookListResponseCopyWithImpl<_BookListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookListResponse&&const DeepCollectionEquality().equals(other._books, _books)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_books),pagination);

@override
String toString() {
  return 'BookListResponse(books: $books, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$BookListResponseCopyWith<$Res> implements $BookListResponseCopyWith<$Res> {
  factory _$BookListResponseCopyWith(_BookListResponse value, $Res Function(_BookListResponse) _then) = __$BookListResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "books") List<Book>? books,@JsonKey(name: "pagination") Pagination? pagination
});


@override $PaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$BookListResponseCopyWithImpl<$Res>
    implements _$BookListResponseCopyWith<$Res> {
  __$BookListResponseCopyWithImpl(this._self, this._then);

  final _BookListResponse _self;
  final $Res Function(_BookListResponse) _then;

/// Create a copy of BookListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? books = freezed,Object? pagination = freezed,}) {
  return _then(_BookListResponse(
books: freezed == books ? _self._books : books // ignore: cast_nullable_to_non_nullable
as List<Book>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination?,
  ));
}

/// Create a copy of BookListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $PaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$Book {

@JsonKey(name: "_id") String? get id;@JsonKey(name: "title") String? get title;@JsonKey(name: "cover_image") String? get coverImage;@JsonKey(name: "author") Author? get author;@JsonKey(name: "category") Author? get category;@JsonKey(name: "summary") String? get summary;@JsonKey(name: "details") Details? get details;@JsonKey(name: "tags") List<Author>? get tags;@JsonKey(name: "buy_links") List<BuyLink>? get buyLinks;@JsonKey(name: "publisher") String? get publisher;
/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookCopyWith<Book> get copyWith => _$BookCopyWithImpl<Book>(this as Book, _$identity);

  /// Serializes this Book to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Book&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.author, author) || other.author == author)&&(identical(other.category, category) || other.category == category)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.details, details) || other.details == details)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.buyLinks, buyLinks)&&(identical(other.publisher, publisher) || other.publisher == publisher));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,coverImage,author,category,summary,details,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(buyLinks),publisher);

@override
String toString() {
  return 'Book(id: $id, title: $title, coverImage: $coverImage, author: $author, category: $category, summary: $summary, details: $details, tags: $tags, buyLinks: $buyLinks, publisher: $publisher)';
}


}

/// @nodoc
abstract mixin class $BookCopyWith<$Res>  {
  factory $BookCopyWith(Book value, $Res Function(Book) _then) = _$BookCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "_id") String? id,@JsonKey(name: "title") String? title,@JsonKey(name: "cover_image") String? coverImage,@JsonKey(name: "author") Author? author,@JsonKey(name: "category") Author? category,@JsonKey(name: "summary") String? summary,@JsonKey(name: "details") Details? details,@JsonKey(name: "tags") List<Author>? tags,@JsonKey(name: "buy_links") List<BuyLink>? buyLinks,@JsonKey(name: "publisher") String? publisher
});


$AuthorCopyWith<$Res>? get author;$AuthorCopyWith<$Res>? get category;$DetailsCopyWith<$Res>? get details;

}
/// @nodoc
class _$BookCopyWithImpl<$Res>
    implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._self, this._then);

  final Book _self;
  final $Res Function(Book) _then;

/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? coverImage = freezed,Object? author = freezed,Object? category = freezed,Object? summary = freezed,Object? details = freezed,Object? tags = freezed,Object? buyLinks = freezed,Object? publisher = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,coverImage: freezed == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as Author?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Author?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as Details?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<Author>?,buyLinks: freezed == buyLinks ? _self.buyLinks : buyLinks // ignore: cast_nullable_to_non_nullable
as List<BuyLink>?,publisher: freezed == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorCopyWith<$Res>? get author {
    if (_self.author == null) {
    return null;
  }

  return $AuthorCopyWith<$Res>(_self.author!, (value) {
    return _then(_self.copyWith(author: value));
  });
}/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $AuthorCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DetailsCopyWith<$Res>? get details {
    if (_self.details == null) {
    return null;
  }

  return $DetailsCopyWith<$Res>(_self.details!, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Book implements Book {
  const _Book({@JsonKey(name: "_id") this.id, @JsonKey(name: "title") this.title, @JsonKey(name: "cover_image") this.coverImage, @JsonKey(name: "author") this.author, @JsonKey(name: "category") this.category, @JsonKey(name: "summary") this.summary, @JsonKey(name: "details") this.details, @JsonKey(name: "tags") final  List<Author>? tags, @JsonKey(name: "buy_links") final  List<BuyLink>? buyLinks, @JsonKey(name: "publisher") this.publisher}): _tags = tags,_buyLinks = buyLinks;
  factory _Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

@override@JsonKey(name: "_id") final  String? id;
@override@JsonKey(name: "title") final  String? title;
@override@JsonKey(name: "cover_image") final  String? coverImage;
@override@JsonKey(name: "author") final  Author? author;
@override@JsonKey(name: "category") final  Author? category;
@override@JsonKey(name: "summary") final  String? summary;
@override@JsonKey(name: "details") final  Details? details;
 final  List<Author>? _tags;
@override@JsonKey(name: "tags") List<Author>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<BuyLink>? _buyLinks;
@override@JsonKey(name: "buy_links") List<BuyLink>? get buyLinks {
  final value = _buyLinks;
  if (value == null) return null;
  if (_buyLinks is EqualUnmodifiableListView) return _buyLinks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "publisher") final  String? publisher;

/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookCopyWith<_Book> get copyWith => __$BookCopyWithImpl<_Book>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Book&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.author, author) || other.author == author)&&(identical(other.category, category) || other.category == category)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.details, details) || other.details == details)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._buyLinks, _buyLinks)&&(identical(other.publisher, publisher) || other.publisher == publisher));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,coverImage,author,category,summary,details,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_buyLinks),publisher);

@override
String toString() {
  return 'Book(id: $id, title: $title, coverImage: $coverImage, author: $author, category: $category, summary: $summary, details: $details, tags: $tags, buyLinks: $buyLinks, publisher: $publisher)';
}


}

/// @nodoc
abstract mixin class _$BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$BookCopyWith(_Book value, $Res Function(_Book) _then) = __$BookCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "_id") String? id,@JsonKey(name: "title") String? title,@JsonKey(name: "cover_image") String? coverImage,@JsonKey(name: "author") Author? author,@JsonKey(name: "category") Author? category,@JsonKey(name: "summary") String? summary,@JsonKey(name: "details") Details? details,@JsonKey(name: "tags") List<Author>? tags,@JsonKey(name: "buy_links") List<BuyLink>? buyLinks,@JsonKey(name: "publisher") String? publisher
});


@override $AuthorCopyWith<$Res>? get author;@override $AuthorCopyWith<$Res>? get category;@override $DetailsCopyWith<$Res>? get details;

}
/// @nodoc
class __$BookCopyWithImpl<$Res>
    implements _$BookCopyWith<$Res> {
  __$BookCopyWithImpl(this._self, this._then);

  final _Book _self;
  final $Res Function(_Book) _then;

/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? coverImage = freezed,Object? author = freezed,Object? category = freezed,Object? summary = freezed,Object? details = freezed,Object? tags = freezed,Object? buyLinks = freezed,Object? publisher = freezed,}) {
  return _then(_Book(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,coverImage: freezed == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as Author?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Author?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as Details?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<Author>?,buyLinks: freezed == buyLinks ? _self._buyLinks : buyLinks // ignore: cast_nullable_to_non_nullable
as List<BuyLink>?,publisher: freezed == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorCopyWith<$Res>? get author {
    if (_self.author == null) {
    return null;
  }

  return $AuthorCopyWith<$Res>(_self.author!, (value) {
    return _then(_self.copyWith(author: value));
  });
}/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $AuthorCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DetailsCopyWith<$Res>? get details {
    if (_self.details == null) {
    return null;
  }

  return $DetailsCopyWith<$Res>(_self.details!, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}


/// @nodoc
mixin _$Author {

@JsonKey(name: "name") String? get name;@JsonKey(name: "url") String? get url;
/// Create a copy of Author
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorCopyWith<Author> get copyWith => _$AuthorCopyWithImpl<Author>(this as Author, _$identity);

  /// Serializes this Author to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Author&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'Author(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $AuthorCopyWith<$Res>  {
  factory $AuthorCopyWith(Author value, $Res Function(Author) _then) = _$AuthorCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "name") String? name,@JsonKey(name: "url") String? url
});




}
/// @nodoc
class _$AuthorCopyWithImpl<$Res>
    implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._self, this._then);

  final Author _self;
  final $Res Function(Author) _then;

/// Create a copy of Author
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? url = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Author implements Author {
  const _Author({@JsonKey(name: "name") this.name, @JsonKey(name: "url") this.url});
  factory _Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);

@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "url") final  String? url;

/// Create a copy of Author
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthorCopyWith<_Author> get copyWith => __$AuthorCopyWithImpl<_Author>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Author&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'Author(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$AuthorCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$AuthorCopyWith(_Author value, $Res Function(_Author) _then) = __$AuthorCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "name") String? name,@JsonKey(name: "url") String? url
});




}
/// @nodoc
class __$AuthorCopyWithImpl<$Res>
    implements _$AuthorCopyWith<$Res> {
  __$AuthorCopyWithImpl(this._self, this._then);

  final _Author _self;
  final $Res Function(_Author) _then;

/// Create a copy of Author
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? url = freezed,}) {
  return _then(_Author(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BuyLink {

@JsonKey(name: "store") String? get store;@JsonKey(name: "url") String? get url;
/// Create a copy of BuyLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BuyLinkCopyWith<BuyLink> get copyWith => _$BuyLinkCopyWithImpl<BuyLink>(this as BuyLink, _$identity);

  /// Serializes this BuyLink to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BuyLink&&(identical(other.store, store) || other.store == store)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,store,url);

@override
String toString() {
  return 'BuyLink(store: $store, url: $url)';
}


}

/// @nodoc
abstract mixin class $BuyLinkCopyWith<$Res>  {
  factory $BuyLinkCopyWith(BuyLink value, $Res Function(BuyLink) _then) = _$BuyLinkCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "store") String? store,@JsonKey(name: "url") String? url
});




}
/// @nodoc
class _$BuyLinkCopyWithImpl<$Res>
    implements $BuyLinkCopyWith<$Res> {
  _$BuyLinkCopyWithImpl(this._self, this._then);

  final BuyLink _self;
  final $Res Function(BuyLink) _then;

/// Create a copy of BuyLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? store = freezed,Object? url = freezed,}) {
  return _then(_self.copyWith(
store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _BuyLink implements BuyLink {
  const _BuyLink({@JsonKey(name: "store") this.store, @JsonKey(name: "url") this.url});
  factory _BuyLink.fromJson(Map<String, dynamic> json) => _$BuyLinkFromJson(json);

@override@JsonKey(name: "store") final  String? store;
@override@JsonKey(name: "url") final  String? url;

/// Create a copy of BuyLink
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BuyLinkCopyWith<_BuyLink> get copyWith => __$BuyLinkCopyWithImpl<_BuyLink>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BuyLinkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BuyLink&&(identical(other.store, store) || other.store == store)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,store,url);

@override
String toString() {
  return 'BuyLink(store: $store, url: $url)';
}


}

/// @nodoc
abstract mixin class _$BuyLinkCopyWith<$Res> implements $BuyLinkCopyWith<$Res> {
  factory _$BuyLinkCopyWith(_BuyLink value, $Res Function(_BuyLink) _then) = __$BuyLinkCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "store") String? store,@JsonKey(name: "url") String? url
});




}
/// @nodoc
class __$BuyLinkCopyWithImpl<$Res>
    implements _$BuyLinkCopyWith<$Res> {
  __$BuyLinkCopyWithImpl(this._self, this._then);

  final _BuyLink _self;
  final $Res Function(_BuyLink) _then;

/// Create a copy of BuyLink
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? store = freezed,Object? url = freezed,}) {
  return _then(_BuyLink(
store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Details {

@JsonKey(name: "no_gm") String? get noGm;@JsonKey(name: "isbn") String? get isbn;@JsonKey(name: "price") String? get price;@JsonKey(name: "total_pages") String? get totalPages;@JsonKey(name: "size") String? get size;@JsonKey(name: "published_date") String? get publishedDate;@JsonKey(name: "format") String? get format;
/// Create a copy of Details
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailsCopyWith<Details> get copyWith => _$DetailsCopyWithImpl<Details>(this as Details, _$identity);

  /// Serializes this Details to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Details&&(identical(other.noGm, noGm) || other.noGm == noGm)&&(identical(other.isbn, isbn) || other.isbn == isbn)&&(identical(other.price, price) || other.price == price)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.size, size) || other.size == size)&&(identical(other.publishedDate, publishedDate) || other.publishedDate == publishedDate)&&(identical(other.format, format) || other.format == format));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,noGm,isbn,price,totalPages,size,publishedDate,format);

@override
String toString() {
  return 'Details(noGm: $noGm, isbn: $isbn, price: $price, totalPages: $totalPages, size: $size, publishedDate: $publishedDate, format: $format)';
}


}

/// @nodoc
abstract mixin class $DetailsCopyWith<$Res>  {
  factory $DetailsCopyWith(Details value, $Res Function(Details) _then) = _$DetailsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "no_gm") String? noGm,@JsonKey(name: "isbn") String? isbn,@JsonKey(name: "price") String? price,@JsonKey(name: "total_pages") String? totalPages,@JsonKey(name: "size") String? size,@JsonKey(name: "published_date") String? publishedDate,@JsonKey(name: "format") String? format
});




}
/// @nodoc
class _$DetailsCopyWithImpl<$Res>
    implements $DetailsCopyWith<$Res> {
  _$DetailsCopyWithImpl(this._self, this._then);

  final Details _self;
  final $Res Function(Details) _then;

/// Create a copy of Details
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? noGm = freezed,Object? isbn = freezed,Object? price = freezed,Object? totalPages = freezed,Object? size = freezed,Object? publishedDate = freezed,Object? format = freezed,}) {
  return _then(_self.copyWith(
noGm: freezed == noGm ? _self.noGm : noGm // ignore: cast_nullable_to_non_nullable
as String?,isbn: freezed == isbn ? _self.isbn : isbn // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as String?,publishedDate: freezed == publishedDate ? _self.publishedDate : publishedDate // ignore: cast_nullable_to_non_nullable
as String?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Details implements Details {
  const _Details({@JsonKey(name: "no_gm") this.noGm, @JsonKey(name: "isbn") this.isbn, @JsonKey(name: "price") this.price, @JsonKey(name: "total_pages") this.totalPages, @JsonKey(name: "size") this.size, @JsonKey(name: "published_date") this.publishedDate, @JsonKey(name: "format") this.format});
  factory _Details.fromJson(Map<String, dynamic> json) => _$DetailsFromJson(json);

@override@JsonKey(name: "no_gm") final  String? noGm;
@override@JsonKey(name: "isbn") final  String? isbn;
@override@JsonKey(name: "price") final  String? price;
@override@JsonKey(name: "total_pages") final  String? totalPages;
@override@JsonKey(name: "size") final  String? size;
@override@JsonKey(name: "published_date") final  String? publishedDate;
@override@JsonKey(name: "format") final  String? format;

/// Create a copy of Details
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailsCopyWith<_Details> get copyWith => __$DetailsCopyWithImpl<_Details>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Details&&(identical(other.noGm, noGm) || other.noGm == noGm)&&(identical(other.isbn, isbn) || other.isbn == isbn)&&(identical(other.price, price) || other.price == price)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.size, size) || other.size == size)&&(identical(other.publishedDate, publishedDate) || other.publishedDate == publishedDate)&&(identical(other.format, format) || other.format == format));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,noGm,isbn,price,totalPages,size,publishedDate,format);

@override
String toString() {
  return 'Details(noGm: $noGm, isbn: $isbn, price: $price, totalPages: $totalPages, size: $size, publishedDate: $publishedDate, format: $format)';
}


}

/// @nodoc
abstract mixin class _$DetailsCopyWith<$Res> implements $DetailsCopyWith<$Res> {
  factory _$DetailsCopyWith(_Details value, $Res Function(_Details) _then) = __$DetailsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "no_gm") String? noGm,@JsonKey(name: "isbn") String? isbn,@JsonKey(name: "price") String? price,@JsonKey(name: "total_pages") String? totalPages,@JsonKey(name: "size") String? size,@JsonKey(name: "published_date") String? publishedDate,@JsonKey(name: "format") String? format
});




}
/// @nodoc
class __$DetailsCopyWithImpl<$Res>
    implements _$DetailsCopyWith<$Res> {
  __$DetailsCopyWithImpl(this._self, this._then);

  final _Details _self;
  final $Res Function(_Details) _then;

/// Create a copy of Details
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? noGm = freezed,Object? isbn = freezed,Object? price = freezed,Object? totalPages = freezed,Object? size = freezed,Object? publishedDate = freezed,Object? format = freezed,}) {
  return _then(_Details(
noGm: freezed == noGm ? _self.noGm : noGm // ignore: cast_nullable_to_non_nullable
as String?,isbn: freezed == isbn ? _self.isbn : isbn // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as String?,publishedDate: freezed == publishedDate ? _self.publishedDate : publishedDate // ignore: cast_nullable_to_non_nullable
as String?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Pagination {

@JsonKey(name: "currentPage") int? get currentPage;@JsonKey(name: "totalPages") int? get totalPages;@JsonKey(name: "totalItems") int? get totalItems;@JsonKey(name: "itemsPerPage") int? get itemsPerPage;@JsonKey(name: "hasNextPage") bool? get hasNextPage;@JsonKey(name: "hasPrevPage") bool? get hasPrevPage;
/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationCopyWith<Pagination> get copyWith => _$PaginationCopyWithImpl<Pagination>(this as Pagination, _$identity);

  /// Serializes this Pagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pagination&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.itemsPerPage, itemsPerPage) || other.itemsPerPage == itemsPerPage)&&(identical(other.hasNextPage, hasNextPage) || other.hasNextPage == hasNextPage)&&(identical(other.hasPrevPage, hasPrevPage) || other.hasPrevPage == hasPrevPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,totalPages,totalItems,itemsPerPage,hasNextPage,hasPrevPage);

@override
String toString() {
  return 'Pagination(currentPage: $currentPage, totalPages: $totalPages, totalItems: $totalItems, itemsPerPage: $itemsPerPage, hasNextPage: $hasNextPage, hasPrevPage: $hasPrevPage)';
}


}

/// @nodoc
abstract mixin class $PaginationCopyWith<$Res>  {
  factory $PaginationCopyWith(Pagination value, $Res Function(Pagination) _then) = _$PaginationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "currentPage") int? currentPage,@JsonKey(name: "totalPages") int? totalPages,@JsonKey(name: "totalItems") int? totalItems,@JsonKey(name: "itemsPerPage") int? itemsPerPage,@JsonKey(name: "hasNextPage") bool? hasNextPage,@JsonKey(name: "hasPrevPage") bool? hasPrevPage
});




}
/// @nodoc
class _$PaginationCopyWithImpl<$Res>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._self, this._then);

  final Pagination _self;
  final $Res Function(Pagination) _then;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = freezed,Object? totalPages = freezed,Object? totalItems = freezed,Object? itemsPerPage = freezed,Object? hasNextPage = freezed,Object? hasPrevPage = freezed,}) {
  return _then(_self.copyWith(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int?,itemsPerPage: freezed == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int?,hasNextPage: freezed == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool?,hasPrevPage: freezed == hasPrevPage ? _self.hasPrevPage : hasPrevPage // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Pagination implements Pagination {
  const _Pagination({@JsonKey(name: "currentPage") this.currentPage, @JsonKey(name: "totalPages") this.totalPages, @JsonKey(name: "totalItems") this.totalItems, @JsonKey(name: "itemsPerPage") this.itemsPerPage, @JsonKey(name: "hasNextPage") this.hasNextPage, @JsonKey(name: "hasPrevPage") this.hasPrevPage});
  factory _Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);

@override@JsonKey(name: "currentPage") final  int? currentPage;
@override@JsonKey(name: "totalPages") final  int? totalPages;
@override@JsonKey(name: "totalItems") final  int? totalItems;
@override@JsonKey(name: "itemsPerPage") final  int? itemsPerPage;
@override@JsonKey(name: "hasNextPage") final  bool? hasNextPage;
@override@JsonKey(name: "hasPrevPage") final  bool? hasPrevPage;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationCopyWith<_Pagination> get copyWith => __$PaginationCopyWithImpl<_Pagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pagination&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.itemsPerPage, itemsPerPage) || other.itemsPerPage == itemsPerPage)&&(identical(other.hasNextPage, hasNextPage) || other.hasNextPage == hasNextPage)&&(identical(other.hasPrevPage, hasPrevPage) || other.hasPrevPage == hasPrevPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,totalPages,totalItems,itemsPerPage,hasNextPage,hasPrevPage);

@override
String toString() {
  return 'Pagination(currentPage: $currentPage, totalPages: $totalPages, totalItems: $totalItems, itemsPerPage: $itemsPerPage, hasNextPage: $hasNextPage, hasPrevPage: $hasPrevPage)';
}


}

/// @nodoc
abstract mixin class _$PaginationCopyWith<$Res> implements $PaginationCopyWith<$Res> {
  factory _$PaginationCopyWith(_Pagination value, $Res Function(_Pagination) _then) = __$PaginationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "currentPage") int? currentPage,@JsonKey(name: "totalPages") int? totalPages,@JsonKey(name: "totalItems") int? totalItems,@JsonKey(name: "itemsPerPage") int? itemsPerPage,@JsonKey(name: "hasNextPage") bool? hasNextPage,@JsonKey(name: "hasPrevPage") bool? hasPrevPage
});




}
/// @nodoc
class __$PaginationCopyWithImpl<$Res>
    implements _$PaginationCopyWith<$Res> {
  __$PaginationCopyWithImpl(this._self, this._then);

  final _Pagination _self;
  final $Res Function(_Pagination) _then;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = freezed,Object? totalPages = freezed,Object? totalItems = freezed,Object? itemsPerPage = freezed,Object? hasNextPage = freezed,Object? hasPrevPage = freezed,}) {
  return _then(_Pagination(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int?,itemsPerPage: freezed == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int?,hasNextPage: freezed == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool?,hasPrevPage: freezed == hasPrevPage ? _self.hasPrevPage : hasPrevPage // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
