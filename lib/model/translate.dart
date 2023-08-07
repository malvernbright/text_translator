import 'package:freezed_annotation/freezed_annotation.dart';

part 'translate.freezed.dart';
part 'translate.g.dart';

@freezed
class Translate with _$Translate {
  const factory Translate({
    required String input_text,
    required String from_lang,
    required String to_lang,
  }) = _Translate;
  factory Translate.fromJson(Map<String, dynamic> json) =>
      _$TranslateFromJson(json);
}
