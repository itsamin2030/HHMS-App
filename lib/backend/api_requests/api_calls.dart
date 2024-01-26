import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start appointmet Group Code

class AppointmetGroup {
  static String baseUrl =
      'https://phplaravel-1143782-4072421.cloudwaysapps.com/api/appointment';
  static Map<String, String> headers = {};
  static GetcountCall getcountCall = GetcountCall();
  static ListCall listCall = ListCall();
  static UpdateAppointmentByPatCall updateAppointmentByPatCall =
      UpdateAppointmentByPatCall();
}

class GetcountCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getcount',
      apiUrl: '${AppointmetGroup.baseUrl}/getcount',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? reqtype = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'list',
      apiUrl: '${AppointmetGroup.baseUrl}/list',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
        'reqtype': reqtype,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateAppointmentByPatCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? reqtype = '',
    String? appId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'updateAppointmentByPat',
      apiUrl: '${AppointmetGroup.baseUrl}/patupdate',
      callType: ApiCallType.PUT,
      headers: {},
      params: {
        'token': token,
        'reqtype': reqtype,
        'appId': appId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End appointmet Group Code

class PatientLoginCall {
  static Future<ApiCallResponse> call({
    String? to = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'patient login',
      apiUrl: 'https://phplaravel-1143782-4072421.cloudwaysapps.com/api/verify',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'to': to,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PatientLoginCheckCall {
  static Future<ApiCallResponse> call({
    String? to = '',
    String? code = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'patient login check',
      apiUrl: 'https://phplaravel-1143782-4072421.cloudwaysapps.com/api/verify',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'to': to,
        'code': code,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AppointmentCountCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'appointment count',
      apiUrl:
          'https://phplaravel-1143782-4072421.cloudwaysapps.com/api/appointment/getcount',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
      },
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
