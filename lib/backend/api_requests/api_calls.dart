import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ApiCepCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'apiCep',
      apiUrl: 'https://viacep.com.br/ws/${cep}/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'deCep': "01000000",
        'ateCep': "19999999",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic cep(dynamic response) => getJsonField(
        response,
        r'''$.cep''',
      );
  static dynamic endereco(dynamic response) => getJsonField(
        response,
        r'''$.logradouro''',
      );
  static dynamic complemento(dynamic response) => getJsonField(
        response,
        r'''$.complemento''',
      );
  static dynamic bairro(dynamic response) => getJsonField(
        response,
        r'''$.bairro''',
      );
  static dynamic cidade(dynamic response) => getJsonField(
        response,
        r'''$.localidade''',
      );
  static dynamic estado(dynamic response) => getJsonField(
        response,
        r'''$.uf''',
      );
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
