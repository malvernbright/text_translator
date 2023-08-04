part of 'translate_bloc.dart';

abstract class TranslateState extends Equatable {
  const TranslateState();
}

class TranslateInitial extends TranslateState {
  @override
  List<Object> get props => [];
}

class TranslatedText extends TranslateState {
  final String translatedText;

  const TranslatedText({required this.translatedText});
  @override
  List<Object> get props => [translatedText];
}

class TranslateError extends TranslateState {
  final String error;

  const TranslateError(this.error);
  @override
  List<Object> get props => [error];
}
