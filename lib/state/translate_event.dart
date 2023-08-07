part of 'translate_bloc.dart';

abstract class TranslateEvent extends Equatable {
  const TranslateEvent();
}

class TranslateText extends TranslateEvent {
  final Translate translate;

  const TranslateText(this.translate);
  @override
  List<Object?> get props => [translate];
}
