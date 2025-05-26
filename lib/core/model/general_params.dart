import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_params.freezed.dart';
part 'general_params.g.dart';

@freezed
abstract class GeneralParams with _$GeneralParams {
  @JsonSerializable(includeIfNull: false)
  const factory GeneralParams({
    int? page,
    String? sort,
    int? year,
    String? genre,
    String? keyword,
    int? limit,
  }) = _GeneralParams;

  factory GeneralParams.fromJson(Map<String, dynamic> json) =>
      _$GeneralParamsFromJson(json);
}
