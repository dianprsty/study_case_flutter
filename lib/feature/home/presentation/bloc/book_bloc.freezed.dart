// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookEvent {

 String get category;
/// Create a copy of BookEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookEventCopyWith<BookEvent> get copyWith => _$BookEventCopyWithImpl<BookEvent>(this as BookEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookEvent&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'BookEvent(category: $category)';
}


}

/// @nodoc
abstract mixin class $BookEventCopyWith<$Res>  {
  factory $BookEventCopyWith(BookEvent value, $Res Function(BookEvent) _then) = _$BookEventCopyWithImpl;
@useResult
$Res call({
 String category
});




}
/// @nodoc
class _$BookEventCopyWithImpl<$Res>
    implements $BookEventCopyWith<$Res> {
  _$BookEventCopyWithImpl(this._self, this._then);

  final BookEvent _self;
  final $Res Function(BookEvent) _then;

/// Create a copy of BookEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,}) {
  return _then(_self.copyWith(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _GetBookByCategory implements BookEvent {
  const _GetBookByCategory(this.category);
  

@override final  String category;

/// Create a copy of BookEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetBookByCategoryCopyWith<_GetBookByCategory> get copyWith => __$GetBookByCategoryCopyWithImpl<_GetBookByCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBookByCategory&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'BookEvent.getBookByCategory(category: $category)';
}


}

/// @nodoc
abstract mixin class _$GetBookByCategoryCopyWith<$Res> implements $BookEventCopyWith<$Res> {
  factory _$GetBookByCategoryCopyWith(_GetBookByCategory value, $Res Function(_GetBookByCategory) _then) = __$GetBookByCategoryCopyWithImpl;
@override @useResult
$Res call({
 String category
});




}
/// @nodoc
class __$GetBookByCategoryCopyWithImpl<$Res>
    implements _$GetBookByCategoryCopyWith<$Res> {
  __$GetBookByCategoryCopyWithImpl(this._self, this._then);

  final _GetBookByCategory _self;
  final $Res Function(_GetBookByCategory) _then;

/// Create a copy of BookEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(_GetBookByCategory(
null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$BookState {

 GeneralState get status; List<BookModel> get books; String? get errorMessage;
/// Create a copy of BookState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookStateCopyWith<BookState> get copyWith => _$BookStateCopyWithImpl<BookState>(this as BookState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.books, books)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(books),errorMessage);

@override
String toString() {
  return 'BookState(status: $status, books: $books, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $BookStateCopyWith<$Res>  {
  factory $BookStateCopyWith(BookState value, $Res Function(BookState) _then) = _$BookStateCopyWithImpl;
@useResult
$Res call({
 GeneralState status, List<BookModel> books, String? errorMessage
});


$GeneralStateCopyWith<$Res> get status;

}
/// @nodoc
class _$BookStateCopyWithImpl<$Res>
    implements $BookStateCopyWith<$Res> {
  _$BookStateCopyWithImpl(this._self, this._then);

  final BookState _self;
  final $Res Function(BookState) _then;

/// Create a copy of BookState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? books = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GeneralState,books: null == books ? _self.books : books // ignore: cast_nullable_to_non_nullable
as List<BookModel>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of BookState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeneralStateCopyWith<$Res> get status {
  
  return $GeneralStateCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// @nodoc


class _BookState implements BookState {
   _BookState({this.status = const GeneralState.initial(), final  List<BookModel> books = const [], this.errorMessage}): _books = books;
  

@override@JsonKey() final  GeneralState status;
 final  List<BookModel> _books;
@override@JsonKey() List<BookModel> get books {
  if (_books is EqualUnmodifiableListView) return _books;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_books);
}

@override final  String? errorMessage;

/// Create a copy of BookState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookStateCopyWith<_BookState> get copyWith => __$BookStateCopyWithImpl<_BookState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._books, _books)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_books),errorMessage);

@override
String toString() {
  return 'BookState(status: $status, books: $books, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$BookStateCopyWith<$Res> implements $BookStateCopyWith<$Res> {
  factory _$BookStateCopyWith(_BookState value, $Res Function(_BookState) _then) = __$BookStateCopyWithImpl;
@override @useResult
$Res call({
 GeneralState status, List<BookModel> books, String? errorMessage
});


@override $GeneralStateCopyWith<$Res> get status;

}
/// @nodoc
class __$BookStateCopyWithImpl<$Res>
    implements _$BookStateCopyWith<$Res> {
  __$BookStateCopyWithImpl(this._self, this._then);

  final _BookState _self;
  final $Res Function(_BookState) _then;

/// Create a copy of BookState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? books = null,Object? errorMessage = freezed,}) {
  return _then(_BookState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GeneralState,books: null == books ? _self._books : books // ignore: cast_nullable_to_non_nullable
as List<BookModel>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BookState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeneralStateCopyWith<$Res> get status {
  
  return $GeneralStateCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

// dart format on
