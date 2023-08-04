import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../repositories/search_repository.dart';

part 'translate_event.dart';
part 'translate_state.dart';

class TranslateBloc extends Bloc<TranslateEvent, TranslateState> {
  final SearchRepositoryImpl searchRepositoryImpl;
  TranslateBloc(this.searchRepositoryImpl) : super(TranslateInitial()) {
    on<TranslateText>((event, emit) async {
      emit(TranslateInitial());
      print('TranslateInitial emitted');
      try {
        final translatedText = await searchRepositoryImpl.searchWord();
        emit(TranslatedText(translatedText: translatedText));
        print('TranslatedText emitted');
      } catch (e) {
        emit(TranslateError(e.toString()));
      }
    });
  }
}
