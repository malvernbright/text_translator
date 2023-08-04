part of 'translate_bloc.dart';

abstract class TranslateEvent extends Equatable {
  const TranslateEvent();
}

class TranslateText extends TranslateEvent {
  @override
  List<Object?> get props => [];
}
