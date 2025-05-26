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

 GeneralParams get params;
/// Create a copy of BookEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookEventCopyWith<BookEvent> get copyWith => _$BookEventCopyWithImpl<BookEvent>(this as BookEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookEvent&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'BookEvent(params: $params)';
}


}

/// @nodoc
abstract mixin class $BookEventCopyWith<$Res>  {
  factory $BookEventCopyWith(BookEvent value, $Res Function(BookEvent) _then) = _$BookEventCopyWithImpl;
@useResult
$Res call({
 GeneralParams params
});


$GeneralParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$BookEventCopyWithImpl<$Res>
    implements $BookEventCopyWith<$Res> {
  _$BookEventCopyWithImpl(this._self, this._then);

  final BookEvent _self;
  final $Res Function(BookEvent) _then;

/// Create a copy of BookEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? params = null,}) {
  return _then(_self.copyWith(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as GeneralParams,
  ));
}
/// Create a copy of BookEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeneralParamsCopyWith<$Res> get params {
  
  return $GeneralParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}


/// @nodoc


class _GetBookByCategory implements BookEvent {
  const _GetBookByCategory(this.params);
  

@override final  GeneralParams params;

/// Create a copy of BookEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetBookByCategoryCopyWith<_GetBookByCategory> get copyWith => __$GetBookByCategoryCopyWithImpl<_GetBookByCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBookByCategory&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'BookEvent.getBookByCategory(params: $params)';
}


}

/// @nodoc
abstract mixin class _$GetBookByCategoryCopyWith<$Res> implements $BookEventCopyWith<$Res> {
  factory _$GetBookByCategoryCopyWith(_GetBookByCategory value, $Res Function(_GetBookByCategory) _then) = __$GetBookByCategoryCopyWithImpl;
@override @useResult
$Res call({
 GeneralParams params
});


@override $GeneralParamsCopyWith<$Res> get params;

}
/// @nodoc
class __$GetBookByCategoryCopyWithImpl<$Res>
    implements _$GetBookByCategoryCopyWith<$Res> {
  __$GetBookByCategoryCopyWithImpl(this._self, this._then);

  final _GetBookByCategory _self;
  final $Res Function(_GetBookByCategory) _then;

/// Create a copy of BookEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(_GetBookByCategory(
null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as GeneralParams,
  ));
}

/// Create a copy of BookEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeneralParamsCopyWith<$Res> get params {
  
  return $GeneralParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc
mixin _$BookState {

 GeneralState get status; List<BookModel> get books; Pagination get pagination; GeneralParams get params; String? get errorMessage;
/// Create a copy of BookState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookStateCopyWith<BookState> get copyWith => _$BookStateCopyWithImpl<BookState>(this as BookState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.books, books)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.params, params) || other.params == params)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(books),pagination,params,errorMessage);

@override
String toString() {
  return 'BookState(status: $status, books: $books, pagination: $pagination, params: $params, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $BookStateCopyWith<$Res>  {
  factory $BookStateCopyWith(BookState value, $Res Function(BookState) _then) = _$BookStateCopyWithImpl;
@useResult
$Res call({
 GeneralState status, List<BookModel> books, Pagination pagination, GeneralParams params, String? errorMessage
});


$GeneralStateCopyWith<$Res> get status;$PaginationCopyWith<$Res> get pagination;$GeneralParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$BookStateCopyWithImpl<$Res>
    implements $BookStateCopyWith<$Res> {
  _$BookStateCopyWithImpl(this._self, this._then);

  final BookState _self;
  final $Res Function(BookState) _then;

/// Create a copy of BookState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? books = null,Object? pagination = null,Object? params = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GeneralState,books: null == books ? _self.books : books // ignore: cast_nullable_to_non_nullable
as List<BookModel>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as GeneralParams,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
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
}/// Create a copy of BookState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res> get pagination {
  
  return $PaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}/// Create a copy of BookState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeneralParamsCopyWith<$Res> get params {
  
  return $GeneralParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}


/// @nodoc


class _BookState implements BookState {
   _BookState({this.status = const GeneralState.initial(), final  List<BookModel> books = const [], this.pagination = const Pagination(), this.params = const GeneralParams(), this.errorMessage}): _books = books;
  

@override@JsonKey() final  GeneralState status;
 final  List<BookModel> _books;
@override@JsonKey() List<BookModel> get books {
  if (_books is EqualUnmodifiableListView) return _books;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_books);
}

@override@JsonKey() final  Pagination pagination;
@override@JsonKey() final  GeneralParams params;
@override final  String? errorMessage;

/// Create a copy of BookState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookStateCopyWith<_BookState> get copyWith => __$BookStateCopyWithImpl<_BookState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._books, _books)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.params, params) || other.params == params)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_books),pagination,params,errorMessage);

@override
String toString() {
  return 'BookState(status: $status, books: $books, pagination: $pagination, params: $params, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$BookStateCopyWith<$Res> implements $BookStateCopyWith<$Res> {
  factory _$BookStateCopyWith(_BookState value, $Res Function(_BookState) _then) = __$BookStateCopyWithImpl;
@override @useResult
$Res call({
 GeneralState status, List<BookModel> books, Pagination pagination, GeneralParams params, String? errorMessage
});


@override $GeneralStateCopyWith<$Res> get status;@override $PaginationCopyWith<$Res> get pagination;@override $GeneralParamsCopyWith<$Res> get params;

}
/// @nodoc
class __$BookStateCopyWithImpl<$Res>
    implements _$BookStateCopyWith<$Res> {
  __$BookStateCopyWithImpl(this._self, this._then);

  final _BookState _self;
  final $Res Function(_BookState) _then;

/// Create a copy of BookState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? books = null,Object? pagination = null,Object? params = null,Object? errorMessage = freezed,}) {
  return _then(_BookState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GeneralState,books: null == books ? _self._books : books // ignore: cast_nullable_to_non_nullable
as List<BookModel>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as GeneralParams,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
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
}/// Create a copy of BookState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res> get pagination {
  
  return $PaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}/// Create a copy of BookState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeneralParamsCopyWith<$Res> get params {
  
  return $GeneralParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

// dart format on
