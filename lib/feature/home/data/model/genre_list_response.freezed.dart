// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genre_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GenreListResponse {

@JsonKey(name: "genre_statistics") List<GenreStatistic>? get genreStatistics;@JsonKey(name: "total_genres") int? get totalGenres;
/// Create a copy of GenreListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenreListResponseCopyWith<GenreListResponse> get copyWith => _$GenreListResponseCopyWithImpl<GenreListResponse>(this as GenreListResponse, _$identity);

  /// Serializes this GenreListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenreListResponse&&const DeepCollectionEquality().equals(other.genreStatistics, genreStatistics)&&(identical(other.totalGenres, totalGenres) || other.totalGenres == totalGenres));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(genreStatistics),totalGenres);

@override
String toString() {
  return 'GenreListResponse(genreStatistics: $genreStatistics, totalGenres: $totalGenres)';
}


}

/// @nodoc
abstract mixin class $GenreListResponseCopyWith<$Res>  {
  factory $GenreListResponseCopyWith(GenreListResponse value, $Res Function(GenreListResponse) _then) = _$GenreListResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "genre_statistics") List<GenreStatistic>? genreStatistics,@JsonKey(name: "total_genres") int? totalGenres
});




}
/// @nodoc
class _$GenreListResponseCopyWithImpl<$Res>
    implements $GenreListResponseCopyWith<$Res> {
  _$GenreListResponseCopyWithImpl(this._self, this._then);

  final GenreListResponse _self;
  final $Res Function(GenreListResponse) _then;

/// Create a copy of GenreListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? genreStatistics = freezed,Object? totalGenres = freezed,}) {
  return _then(_self.copyWith(
genreStatistics: freezed == genreStatistics ? _self.genreStatistics : genreStatistics // ignore: cast_nullable_to_non_nullable
as List<GenreStatistic>?,totalGenres: freezed == totalGenres ? _self.totalGenres : totalGenres // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GenreListResponse implements GenreListResponse {
  const _GenreListResponse({@JsonKey(name: "genre_statistics") final  List<GenreStatistic>? genreStatistics, @JsonKey(name: "total_genres") this.totalGenres}): _genreStatistics = genreStatistics;
  factory _GenreListResponse.fromJson(Map<String, dynamic> json) => _$GenreListResponseFromJson(json);

 final  List<GenreStatistic>? _genreStatistics;
@override@JsonKey(name: "genre_statistics") List<GenreStatistic>? get genreStatistics {
  final value = _genreStatistics;
  if (value == null) return null;
  if (_genreStatistics is EqualUnmodifiableListView) return _genreStatistics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "total_genres") final  int? totalGenres;

/// Create a copy of GenreListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenreListResponseCopyWith<_GenreListResponse> get copyWith => __$GenreListResponseCopyWithImpl<_GenreListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenreListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenreListResponse&&const DeepCollectionEquality().equals(other._genreStatistics, _genreStatistics)&&(identical(other.totalGenres, totalGenres) || other.totalGenres == totalGenres));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_genreStatistics),totalGenres);

@override
String toString() {
  return 'GenreListResponse(genreStatistics: $genreStatistics, totalGenres: $totalGenres)';
}


}

/// @nodoc
abstract mixin class _$GenreListResponseCopyWith<$Res> implements $GenreListResponseCopyWith<$Res> {
  factory _$GenreListResponseCopyWith(_GenreListResponse value, $Res Function(_GenreListResponse) _then) = __$GenreListResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "genre_statistics") List<GenreStatistic>? genreStatistics,@JsonKey(name: "total_genres") int? totalGenres
});




}
/// @nodoc
class __$GenreListResponseCopyWithImpl<$Res>
    implements _$GenreListResponseCopyWith<$Res> {
  __$GenreListResponseCopyWithImpl(this._self, this._then);

  final _GenreListResponse _self;
  final $Res Function(_GenreListResponse) _then;

/// Create a copy of GenreListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? genreStatistics = freezed,Object? totalGenres = freezed,}) {
  return _then(_GenreListResponse(
genreStatistics: freezed == genreStatistics ? _self._genreStatistics : genreStatistics // ignore: cast_nullable_to_non_nullable
as List<GenreStatistic>?,totalGenres: freezed == totalGenres ? _self.totalGenres : totalGenres // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$GenreStatistic {

@JsonKey(name: "count") int? get count;@JsonKey(name: "genre") String? get genre;
/// Create a copy of GenreStatistic
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenreStatisticCopyWith<GenreStatistic> get copyWith => _$GenreStatisticCopyWithImpl<GenreStatistic>(this as GenreStatistic, _$identity);

  /// Serializes this GenreStatistic to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenreStatistic&&(identical(other.count, count) || other.count == count)&&(identical(other.genre, genre) || other.genre == genre));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,genre);

@override
String toString() {
  return 'GenreStatistic(count: $count, genre: $genre)';
}


}

/// @nodoc
abstract mixin class $GenreStatisticCopyWith<$Res>  {
  factory $GenreStatisticCopyWith(GenreStatistic value, $Res Function(GenreStatistic) _then) = _$GenreStatisticCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "count") int? count,@JsonKey(name: "genre") String? genre
});




}
/// @nodoc
class _$GenreStatisticCopyWithImpl<$Res>
    implements $GenreStatisticCopyWith<$Res> {
  _$GenreStatisticCopyWithImpl(this._self, this._then);

  final GenreStatistic _self;
  final $Res Function(GenreStatistic) _then;

/// Create a copy of GenreStatistic
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = freezed,Object? genre = freezed,}) {
  return _then(_self.copyWith(
count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,genre: freezed == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GenreStatistic implements GenreStatistic {
  const _GenreStatistic({@JsonKey(name: "count") this.count, @JsonKey(name: "genre") this.genre});
  factory _GenreStatistic.fromJson(Map<String, dynamic> json) => _$GenreStatisticFromJson(json);

@override@JsonKey(name: "count") final  int? count;
@override@JsonKey(name: "genre") final  String? genre;

/// Create a copy of GenreStatistic
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenreStatisticCopyWith<_GenreStatistic> get copyWith => __$GenreStatisticCopyWithImpl<_GenreStatistic>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenreStatisticToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenreStatistic&&(identical(other.count, count) || other.count == count)&&(identical(other.genre, genre) || other.genre == genre));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,genre);

@override
String toString() {
  return 'GenreStatistic(count: $count, genre: $genre)';
}


}

/// @nodoc
abstract mixin class _$GenreStatisticCopyWith<$Res> implements $GenreStatisticCopyWith<$Res> {
  factory _$GenreStatisticCopyWith(_GenreStatistic value, $Res Function(_GenreStatistic) _then) = __$GenreStatisticCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "count") int? count,@JsonKey(name: "genre") String? genre
});




}
/// @nodoc
class __$GenreStatisticCopyWithImpl<$Res>
    implements _$GenreStatisticCopyWith<$Res> {
  __$GenreStatisticCopyWithImpl(this._self, this._then);

  final _GenreStatistic _self;
  final $Res Function(_GenreStatistic) _then;

/// Create a copy of GenreStatistic
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = freezed,Object? genre = freezed,}) {
  return _then(_GenreStatistic(
count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,genre: freezed == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
