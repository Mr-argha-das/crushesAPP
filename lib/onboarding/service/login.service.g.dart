// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations

class _LoginService implements LoginService {
  _LoginService(this._dio, {this.baseUrl, this.errorLogger}) {
    baseUrl ??=
        'https://4d06-2401-4900-1c1a-331b-8089-62aa-317c-5a14.ngrok-free.app';
  }

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<LoginResponseModel> loginUser({
    String accept = "application/json",
    String contentType = "application/x-www-form-urlencoded",
    required String grantType,
    required String username,
    required String password,
    String? scope,
    required String clientId,
    required String clientSecret,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{
      r'accept': accept,
      r'Content-Type': contentType,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'grant_type': grantType,
      'username': username,
      'password': password,
      'scope': scope,
      'client_id': clientId,
      'client_secret': clientSecret,
    };
    _data.removeWhere((k, v) => v == null);
    final _options = _setStreamType<LoginResponseModel>(
      Options(
        method: 'POST',
        headers: _headers,
        extra: _extra,
        contentType: contentType,
      )
          .compose(
            _dio.options,
            '/user/login',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late LoginResponseModel _value;
    try {
      _value = LoginResponseModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
