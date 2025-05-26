// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeneralParams {

 int? get page; String? get sort; int? get year; String? get genre; String? get keyword; int? get limit;
/// Create a copy of GeneralParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneralParamsCopyWith<GeneralParams> get copyWith => _$GeneralParamsCopyWithImpl<GeneralParams>(this as GeneralParams, _$identity);

  /// Serializes this GeneralParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneralParams&&(identical(other.page, page) || other.page == page)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.year, year) || other.year == year)&&(identical(other.genre, genre) || other.genre == genre)&&(identical(other.keyword, keyword) || other.keyword == keyword)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,sort,year,genre,keyword,limit);

@override
String toString() {
  return 'GeneralParams(page: $page, sort: $sort, year: $year, genre: $genre, keyword: $keyword, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $GeneralParamsCopyWith<$Res>  {
  factory $GeneralParamsCopyWith(GeneralParams value, $Res Function(GeneralParams) _then) = _$GeneralParamsCopyWithImpl;
@useResult
$Res call({
 int? page, String? sort, int? year, String? genre, String? keyword, int? limit
});




}
/// @nodoc
class _$GeneralParamsCopyWithImpl<$Res>
    implements $GeneralParamsCopyWith<$Res> {
  _$GeneralParamsCopyWithImpl(this._self, this._then);

  final GeneralParams _self;
  final $Res Function(GeneralParams) _then;

/// Create a copy of GeneralParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = freezed,Object? sort = freezed,Object? year = freezed,Object? genre = freezed,Object? keyword = freezed,Object? limit = freezed,}) {
  return _then(_self.copyWith(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as String?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int?,genre: freezed == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String?,keyword: freezed == keyword ? _self.keyword : keyword // ignore: cast_nullable_to_non_nullable
as String?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc

@JsonSerializable(includeIfNull: false)
class _GeneralParams implements GeneralParams {
  const _GeneralParams({this.page, this.sort, this.year, this.genre, this.keyword, this.limit});
  factory _GeneralParams.fromJson(Map<String, dynamic> json) => _$GeneralParamsFromJson(json);

@override final  int? page;
@override final  String? sort;
@override final  int? year;
@override final  String? genre;
@override final  String? keyword;
@override final  int? limit;

/// Create a copy of GeneralParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneralParamsCopyWith<_GeneralParams> get copyWith => __$GeneralParamsCopyWithImpl<_GeneralParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeneralParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneralParams&&(identical(other.page, page) || other.page == page)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.year, year) || other.year == year)&&(identical(other.genre, genre) || other.genre == genre)&&(identical(other.keyword, keyword) || other.keyword == keyword)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,sort,year,genre,keyword,limit);

@override
String toString() {
  return 'GeneralParams(page: $page, sort: $sort, year: $year, genre: $genre, keyword: $keyword, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GeneralParamsCopyWith<$Res> implements $GeneralParamsCopyWith<$Res> {
  factory _$GeneralParamsCopyWith(_GeneralParams value, $Res Function(_GeneralParams) _then) = __$GeneralParamsCopyWithImpl;
@override @useResult
$Res call({
 int? page, String? sort, int? year, String? genre, String? keyword, int? limit
});




}
/// @nodoc
class __$GeneralParamsCopyWithImpl<$Res>
    implements _$GeneralParamsCopyWith<$Res> {
  __$GeneralParamsCopyWithImpl(this._self, this._then);

  final _GeneralParams _self;
  final $Res Function(_GeneralParams) _then;

/// Create a copy of GeneralParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = freezed,Object? sort = freezed,Object? year = freezed,Object? genre = freezed,Object? keyword = freezed,Object? limit = freezed,}) {
  return _then(_GeneralParams(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as String?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int?,genre: freezed == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String?,keyword: freezed == keyword ? _self.keyword : keyword // ignore: cast_nullable_to_non_nullable
as String?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
