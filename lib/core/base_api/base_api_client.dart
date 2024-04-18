// ignore_for_file: avoid_print
import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:ecommerce_project/core/base_api/api_exception.dart';
import 'package:ecommerce_project/core/url/api_url.dart';
import 'package:http/http.dart' as http;

class BaseApiClient {
  static const int timeOutDuration = 20;

  Future<dynamic> get({required String endPoint}) async {
    final uri = Uri.parse(ApiUrl.baseUrl + endPoint);
    try {
      log('\x1B[92m(get) requesting URL: $uri');
      final response = await http
          .get(
            uri,
            headers: _setHeader(),
          )
          .timeout(const Duration(seconds: timeOutDuration));
      log('\x1B[95mResponse status code: ${response.statusCode}');

      return _processResponse(response);
    } catch (e) {
      return _handleException(e, uri.toString());
    }
  }

  Future<dynamic> post(
      {required String endPoint, required dynamic data}) async {
    final uri = Uri.parse(ApiUrl.baseUrl + endPoint);
    final dataJson = json.encode(data);

    try {
      log('\x1B[92m(post) requesting URL: $uri');
      log(jsonEncode(data));
      final response = await http
          .post(
            uri,
            body: dataJson,
            headers: _setHeader(),
          )
          .timeout(const Duration(seconds: timeOutDuration));

      log('\x1B[95mResponse status code: ${response.statusCode}');
      return _processResponse(response);
    } catch (e) {
      throw _handleException(e, uri.toString());
    }
  }

  Map<String, String> _setHeader() {
    return {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
  }

  dynamic _processResponse(http.Response response) {
    log("Response Body->\n${response.body}");
    switch (response.statusCode) {
      case 200:
        return json.decode(response.body);
      case 400:
        throw BadRequestException(
          jsonEncode(json.decode(response.body)),
          response.request!.url.toString(),
        );
      case 403:
        throw UnAuthorizedException(
          utf8.decode(response.bodyBytes),
          response.request!.url.toString(),
        );
      case 404:
        throw NotFound(
          "404 Not Found!",
          response.request!.url.toString(),
        );
      case 422:
        throw BadRequestException(
          'Bad Request',
          response.request!.url.toString(),
        );
      case 500:
        throw ServerException(
          'Server Error',
          response.request!.url.toString(),
        );
      default:
        throw FetchDataException(
          'Data Fetching Error.\nError occurred with code : ${response.statusCode}',
          response.request!.url.toString(),
        );
    }
  }

  Exception _handleException(dynamic error, String url) {
    if (error is SocketException) {
      return FetchDataException('No Internet connection', url);
    } else if (error is TimeoutException) {
      return ApiNotRespondingException('API not responded in time', url);
    } else {
      throw error;
    }
  }
}
