import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/translate.dart';
import '../utils/constants.dart';

abstract class SearchRepository {
  Future<String> searchWord(Translate translate);
}

class SearchRepositoryImpl implements SearchRepository {
  ///
  /// Follow the format below
  /// {
  ///   "input_text": "furaha ya kuzaliwa dada yangu mpendwa",
  ///  "from_lang": "swahili",
  ///  "to_lang": "en"
  ///  }
  ///
  @override
  Future<String> searchWord(Translate translate) async {
    var url = Uri.https(Constants.kTrUrl, '/translate/');
    var response = await http.post(
      url,
      body: jsonEncode(translate.toJson()),
      headers: {
        'Accept': '*/*',
      },
    );
    print('Response status: ${response.statusCode}');
    var data = jsonDecode(response.body);
    print(data['data']);
    return data['data'];
  }
}
