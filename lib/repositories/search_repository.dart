import 'package:http/http.dart' as http;

import '../utils/constants.dart';

abstract class SearchRepository {
  Future<String> searchWord();
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
  Future<String> searchWord() async {
    var url = Uri.https(
      Constants.trUrl,
    );
    var body = {
      "input_text": "furaha ya kuzaliwa dada yangu mpendwa",
      "from_lang": "swahili",
      "to_lang": "en"
    };
    var response = await http.post(
      url,
      body: body,
      headers: {
        'Accept': '*/*',
        'referer': 'https://d349-197-211-240-197.ngrok-free.app'
      },
    );
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    return response.toString();
  }
}
