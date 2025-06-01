// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genre_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GenreEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenreEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GenreEvent()';
}


}

/// @nodoc
class $GenreEventCopyWith<$Res>  {
$GenreEventCopyWith(GenreEvent _, $Res Function(GenreEvent) __);
}


/// @nodoc


class _GetGenre implements GenreEvent {
  const _GetGenre();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGenre);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GenreEvent.getGenre()';
}


}




/// @nodoc


class _SetGenre implements GenreEvent {
  const _SetGenre(this.genre);
  

 final  String genre;

/// Create a copy of GenreEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetGenreCopyWith<_SetGenre> get copyWith => __$SetGenreCopyWithImpl<_SetGenre>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetGenre&&(identical(other.genre, genre) || other.genre == genre));
}


@override
int get hashCode => Object.hash(runtimeType,genre);

@override
String toString() {
  return 'GenreEvent.setGenre(genre: $genre)';
}


}

/// @nodoc
abstract mixin class _$SetGenreCopyWith<$Res> implements $GenreEventCopyWith<$Res> {
  factory _$SetGenreCopyWith(_SetGenre value, $Res Function(_SetGenre) _then) = __$SetGenreCopyWithImpl;
@useResult
$Res call({
 String genre
});




}
/// @nodoc
class __$SetGenreCopyWithImpl<$Res>
    implements _$SetGenreCopyWith<$Res> {
  __$SetGenreCopyWithImpl(this._self, this._then);

  final _SetGenre _self;
  final $Res Function(_SetGenre) _then;

/// Create a copy of GenreEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? genre = null,}) {
  return _then(_SetGenre(
null == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$GenreState {

 GeneralState get status; List<GenreModel> get genres; String? get errorMessage; String? get selectedGenre;
/// Create a copy of GenreState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenreStateCopyWith<GenreState> get copyWith => _$GenreStateCopyWithImpl<GenreState>(this as GenreState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenreState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.genres, genres)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.selectedGenre, selectedGenre) || other.selectedGenre == selectedGenre));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(genres),errorMessage,selectedGenre);

@override
String toString() {
  return 'GenreState(status: $status, genres: $genres, errorMessage: $errorMessage, selectedGenre: $selectedGenre)';
}


}

/// @nodoc
abstract mixin class $GenreStateCopyWith<$Res>  {
  factory $GenreStateCopyWith(GenreState value, $Res Function(GenreState) _then) = _$GenreStateCopyWithImpl;
@useResult
$Res call({
 GeneralState status, List<GenreModel> genres, String? errorMessage, String? selectedGenre
});


$GeneralStateCopyWith<$Res> get status;

}
/// @nodoc
class _$GenreStateCopyWithImpl<$Res>
    implements $GenreStateCopyWith<$Res> {
  _$GenreStateCopyWithImpl(this._self, this._then);

  final GenreState _self;
  final $Res Function(GenreState) _then;

/// Create a copy of GenreState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? genres = null,Object? errorMessage = freezed,Object? selectedGenre = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GeneralState,genres: null == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<GenreModel>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,selectedGenre: freezed == selectedGenre ? _self.selectedGenre : selectedGenre // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of GenreState
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


class _GenreState implements GenreState {
  const _GenreState({this.status = const GeneralState.initial(), final  List<GenreModel> genres = const [], this.errorMessage, this.selectedGenre}): _genres = genres;
  

@override@JsonKey() final  GeneralState status;
 final  List<GenreModel> _genres;
@override@JsonKey() List<GenreModel> get genres {
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genres);
}

@override final  String? errorMessage;
@override final  String? selectedGenre;

/// Create a copy of GenreState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenreStateCopyWith<_GenreState> get copyWith => __$GenreStateCopyWithImpl<_GenreState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenreState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._genres, _genres)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.selectedGenre, selectedGenre) || other.selectedGenre == selectedGenre));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_genres),errorMessage,selectedGenre);

@override
String toString() {
  return 'GenreState(status: $status, genres: $genres, errorMessage: $errorMessage, selectedGenre: $selectedGenre)';
}


}

/// @nodoc
abstract mixin class _$GenreStateCopyWith<$Res> implements $GenreStateCopyWith<$Res> {
  factory _$GenreStateCopyWith(_GenreState value, $Res Function(_GenreState) _then) = __$GenreStateCopyWithImpl;
@override @useResult
$Res call({
 GeneralState status, List<GenreModel> genres, String? errorMessage, String? selectedGenre
});


@override $GeneralStateCopyWith<$Res> get status;

}
/// @nodoc
class __$GenreStateCopyWithImpl<$Res>
    implements _$GenreStateCopyWith<$Res> {
  __$GenreStateCopyWithImpl(this._self, this._then);

  final _GenreState _self;
  final $Res Function(_GenreState) _then;

/// Create a copy of GenreState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? genres = null,Object? errorMessage = freezed,Object? selectedGenre = freezed,}) {
  return _then(_GenreState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GeneralState,genres: null == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<GenreModel>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,selectedGenre: freezed == selectedGenre ? _self.selectedGenre : selectedGenre // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of GenreState
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
