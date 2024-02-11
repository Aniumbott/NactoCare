import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class NactoGPTCall {
  static Future<ApiCallResponse> call({
    String? prompt = '',
    String? domains = '',
    int? age,
  }) async {
    final ffApiRequestBody = '''
{
  "contents": [
    {
      "parts": [
        {
          "text": "I have a description of health condition for basic home caring. All I want you to do is that read my requirement description and then checkout my list of professional domains of nurses and then output to me one of the best matching nurse domain and nothing else. So here goes my description : $prompt List of nurses : $domains"
        }
      ]
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'NactoGPT',
      apiUrl:
          'https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=AIzaSyBDoQYlOqICymug8Dw8w6jPhI20mKyyEWc',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
