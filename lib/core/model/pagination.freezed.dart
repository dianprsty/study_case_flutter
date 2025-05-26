// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

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
