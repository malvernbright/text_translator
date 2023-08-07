import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:text_translator/model/translate.dart';
import 'package:text_translator/utils/constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../repositories/search_repository.dart';
import '../state/translate_bloc.dart';
import '../widgets/exact_row.dart';
import '../widgets/my_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _textController = TextEditingController();
  List<String> languages = Constants.languages;
  String fromDropdownValue = Constants.languages.first;
  String toDropdownValue = Constants.languages.first;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TranslateBloc(SearchRepositoryImpl()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Text Translator'),
        ),
        drawer: const MyDrawer(),
        body: BlocListener<TranslateBloc, TranslateState>(
          listener: (context, state) {
            if (state is TranslateError) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(state.error)));
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  child: BlocBuilder<TranslateBloc, TranslateState>(
                    builder: (context, state) {
                      return SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                TextField(
                                  controller: _textController,
                                  decoration: const InputDecoration(
                                    hintText: 'Translation text',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    exactRow(
                                        actionText: 'from',
                                        itemValue: fromDropdownValue,
                                        onChanged: (value) {
                                          setState(() {
                                            fromDropdownValue = value;
                                          });
                                        }),
                                    exactRow(
                                        actionText: 'to',
                                        itemValue: toDropdownValue,
                                        onChanged: (value) {
                                          setState(() {
                                            toDropdownValue = value;
                                          });
                                        })
                                  ],
                                ),
                                MaterialButton(
                                  shape: const StadiumBorder(
                                      side: BorderSide(color: Colors.black)),
                                  onPressed: () {
                                    final translate = Translate(
                                        input_text: _textController.text,
                                        from_lang: fromDropdownValue,
                                        to_lang: toDropdownValue);
                                    context
                                        .read<TranslateBloc>()
                                        .add(TranslateText(translate));
                                  },
                                  child: const Text('Translate'),
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(8),
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * .5,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20)),
                  child: BlocBuilder<TranslateBloc, TranslateState>(
                    builder: (context, state) {
                      if (state is TranslatedText) {
                        return SelectableText(
                          state.translatedText,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Colors.white),
                        );
                      } else if (state is TranslateError) {
                        return SelectableText(
                          state.error,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Colors.red),
                        );
                      } else {
                        return Center(
                          child: SpinKitThreeInOut(
                              color: Theme.of(context).primaryColorLight),
                        );
                      }
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
