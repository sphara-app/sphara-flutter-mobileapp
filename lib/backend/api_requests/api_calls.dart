import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetZipCodeInfoCall {
  static Future<ApiCallResponse> call({
    String? countryName = '',
    String? postalCode = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getZipCodeInfo',
      apiUrl:
          'https://community-zippopotamus.p.rapidapi.com/${countryName}/${postalCode}',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': 'cd6875205dmsh96d3ab679d210afp1af53cjsn82b7594fae9d',
        'X-RapidAPI-Host': 'community-zippopotamus.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic countryName(dynamic response) => getJsonField(
        response,
        r'''$.country''',
      );
  static dynamic placeList(dynamic response) => getJsonField(
        response,
        r'''$.places''',
        true,
      );
  static dynamic placesLongitude(dynamic response) => getJsonField(
        response,
        r'''$.places[:].longitude''',
      );
  static dynamic placeState(dynamic response) => getJsonField(
        response,
        r'''$.places[:].state''',
      );
  static dynamic placeLatitude(dynamic response) => getJsonField(
        response,
        r'''$.places[:].latitude''',
      );
  static dynamic postCode(dynamic response) => getJsonField(
        response,
        r'''$["post code"]''',
      );
  static dynamic countryabbreviation(dynamic response) => getJsonField(
        response,
        r'''$["country abbreviation"]''',
      );
  static dynamic placeName(dynamic response) => getJsonField(
        response,
        r'''$.places[:]["place name"]''',
      );
  static dynamic stateabbreviation(dynamic response) => getJsonField(
        response,
        r'''$.places[:]["state abbreviation"]''',
      );
}

class AllCountryApiCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'all country api',
      apiUrl: 'https://restcountries.com/v2/all',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic countryName(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
        true,
      );
  static dynamic latlng(dynamic response) => getJsonField(
        response,
        r'''$[:].latlng''',
        true,
      );
  static dynamic callingCode(dynamic response) => getJsonField(
        response,
        r'''$[:].callingCodes''',
        true,
      );
  static dynamic countryCode(dynamic response) => getJsonField(
        response,
        r'''$[:].alpha2Code''',
        true,
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
