import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../repositories/search_repository.dart';
import '../state/translate_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static final TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TranslateBloc(SearchRepositoryImpl()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Text Translator'),
        ),
        body: BlocListener<TranslateBloc, TranslateState>(
          listener: (context, state) {
            if (state is TranslateError) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(state.error)));
            }
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(20),
            child: BlocBuilder<TranslateBloc, TranslateState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      controller: _textController,
                      decoration: const InputDecoration(
                        hintText: 'Translation text',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    MaterialButton(
                      shape: const StadiumBorder(
                          side: BorderSide(color: Colors.black)),
                      onPressed: () =>
                          context.read<TranslateBloc>().add(TranslateText()),
                      child: const Text('Translate'),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
