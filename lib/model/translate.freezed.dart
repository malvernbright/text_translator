// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Translate _$TranslateFromJson(Map<String, dynamic> json) {
  return _Translate.fromJson(json);
}

/// @nodoc
mixin _$Translate {
  String get input_text => throw _privateConstructorUsedError;
  String get from_lang => throw _privateConstructorUsedError;
  String get to_lang => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TranslateCopyWith<Translate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslateCopyWith<$Res> {
  factory $TranslateCopyWith(Translate value, $Res Function(Translate) then) =
      _$TranslateCopyWithImpl<$Res, Translate>;
  @useResult
  $Res call({String input_text, String from_lang, String to_lang});
}

/// @nodoc
class _$TranslateCopyWithImpl<$Res, $Val extends Translate>
    implements $TranslateCopyWith<$Res> {
  _$TranslateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input_text = null,
    Object? from_lang = null,
    Object? to_lang = null,
  }) {
    return _then(_value.copyWith(
      input_text: null == input_text
          ? _value.input_text
          : input_text // ignore: cast_nullable_to_non_nullable
              as String,
      from_lang: null == from_lang
          ? _value.from_lang
          : from_lang // ignore: cast_nullable_to_non_nullable
              as String,
      to_lang: null == to_lang
          ? _value.to_lang
          : to_lang // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TranslateCopyWith<$Res> implements $TranslateCopyWith<$Res> {
  factory _$$_TranslateCopyWith(
          _$_Translate value, $Res Function(_$_Translate) then) =
      __$$_TranslateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String input_text, String from_lang, String to_lang});
}

/// @nodoc
class __$$_TranslateCopyWithImpl<$Res>
    extends _$TranslateCopyWithImpl<$Res, _$_Translate>
    implements _$$_TranslateCopyWith<$Res> {
  __$$_TranslateCopyWithImpl(
      _$_Translate _value, $Res Function(_$_Translate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input_text = null,
    Object? from_lang = null,
    Object? to_lang = null,
  }) {
    return _then(_$_Translate(
      input_text: null == input_text
          ? _value.input_text
          : input_text // ignore: cast_nullable_to_non_nullable
              as String,
      from_lang: null == from_lang
          ? _value.from_lang
          : from_lang // ignore: cast_nullable_to_non_nullable
              as String,
      to_lang: null == to_lang
          ? _value.to_lang
          : to_lang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Translate implements _Translate {
  const _$_Translate(
      {required this.input_text,
      required this.from_lang,
      required this.to_lang});

  factory _$_Translate.fromJson(Map<String, dynamic> json) =>
      _$$_TranslateFromJson(json);

  @override
  final String input_text;
  @override
  final String from_lang;
  @override
  final String to_lang;

  @override
  String toString() {
    return 'Translate(input_text: $input_text, from_lang: $from_lang, to_lang: $to_lang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Translate &&
            (identical(other.input_text, input_text) ||
                other.input_text == input_text) &&
            (identical(other.from_lang, from_lang) ||
                other.from_lang == from_lang) &&
            (identical(other.to_lang, to_lang) || other.to_lang == to_lang));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, input_text, from_lang, to_lang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TranslateCopyWith<_$_Translate> get copyWith =>
      __$$_TranslateCopyWithImpl<_$_Translate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TranslateToJson(
      this,
    );
  }
}

abstract class _Translate implements Translate {
  const factory _Translate(
      {required final String input_text,
      required final String from_lang,
      required final String to_lang}) = _$_Translate;

  factory _Translate.fromJson(Map<String, dynamic> json) =
      _$_Translate.fromJson;

  @override
  String get input_text;
  @override
  String get from_lang;
  @override
  String get to_lang;
  @override
  @JsonKey(ignore: true)
  _$$_TranslateCopyWith<_$_Translate> get copyWith =>
      throw _privateConstructorUsedError;
}
