// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_with_pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DataWithPagination<T> {

 List<T> get data; Pagination get pagination;
/// Create a copy of DataWithPagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataWithPaginationCopyWith<T, DataWithPagination<T>> get copyWith => _$DataWithPaginationCopyWithImpl<T, DataWithPagination<T>>(this as DataWithPagination<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataWithPagination<T>&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),pagination);

@override
String toString() {
  return 'DataWithPagination<$T>(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $DataWithPaginationCopyWith<T,$Res>  {
  factory $DataWithPaginationCopyWith(DataWithPagination<T> value, $Res Function(DataWithPagination<T>) _then) = _$DataWithPaginationCopyWithImpl;
@useResult
$Res call({
 List<T> data, Pagination pagination
});


$PaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class _$DataWithPaginationCopyWithImpl<T,$Res>
    implements $DataWithPaginationCopyWith<T, $Res> {
  _$DataWithPaginationCopyWithImpl(this._self, this._then);

  final DataWithPagination<T> _self;
  final $Res Function(DataWithPagination<T>) _then;

/// Create a copy of DataWithPagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? pagination = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<T>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,
  ));
}
/// Create a copy of DataWithPagination
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res> get pagination {
  
  return $PaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc


class _DataWithPagination<T> implements DataWithPagination<T> {
   _DataWithPagination({required final  List<T> data, required this.pagination}): _data = data;
  

 final  List<T> _data;
@override List<T> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  Pagination pagination;

/// Create a copy of DataWithPagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataWithPaginationCopyWith<T, _DataWithPagination<T>> get copyWith => __$DataWithPaginationCopyWithImpl<T, _DataWithPagination<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DataWithPagination<T>&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),pagination);

@override
String toString() {
  return 'DataWithPagination<$T>(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$DataWithPaginationCopyWith<T,$Res> implements $DataWithPaginationCopyWith<T, $Res> {
  factory _$DataWithPaginationCopyWith(_DataWithPagination<T> value, $Res Function(_DataWithPagination<T>) _then) = __$DataWithPaginationCopyWithImpl;
@override @useResult
$Res call({
 List<T> data, Pagination pagination
});


@override $PaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class __$DataWithPaginationCopyWithImpl<T,$Res>
    implements _$DataWithPaginationCopyWith<T, $Res> {
  __$DataWithPaginationCopyWithImpl(this._self, this._then);

  final _DataWithPagination<T> _self;
  final $Res Function(_DataWithPagination<T>) _then;

/// Create a copy of DataWithPagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? pagination = null,}) {
  return _then(_DataWithPagination<T>(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<T>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,
  ));
}

/// Create a copy of DataWithPagination
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res> get pagination {
  
  return $PaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}

// dart format on
