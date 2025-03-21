// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.service.dart';

// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations

class _RegisterUserService implements RegisterUserService {
  _RegisterUserService(this._dio, {this.baseUrl, this.errorLogger}) {
    baseUrl ??= 'https://crushes-backend-fzuu4.ondigitalocean.app';
  }

  final Dio _dio;
  String? baseUrl;
  final ParseErrorLogger? errorLogger;

  @override
  Future<Map<String, dynamic>> registerUser(RegisterModelBody body) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());

    final _options = _setStreamType<Map<String, dynamic>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/users/create',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );

    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late Map<String, dynamic> _value;

    try {
      // Assuming the response is a raw JSON Map, without the User model
      _value = _result.data ?? {};  // Safe check to avoid null errors
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }

    return _value;
  }

  @override
  Future<FileUploadResponse> uploadProfile(File file) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.files.add(
      MapEntry(
        'file',
        MultipartFile.fromFileSync(
          file.path,
          filename: file.path.split(Platform.pathSeparator).last,
        ),
      ),
    );

    final _options = _setStreamType<FileUploadResponse>(
      Options(
        method: 'POST',
        headers: _headers,
        extra: _extra,
        contentType: 'multipart/form-data',
      )
          .compose(
            _dio.options,
            '/user/upload-profile',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );

    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late FileUploadResponse _value;

    try {
      _value = FileUploadResponse.fromJson(_result.data!);  // Assuming FileUploadResponse model exists
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
