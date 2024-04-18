import 'dart:developer';

import 'package:ecommerce_project/core/base_api/api_exception.dart';
import 'package:get/get.dart';
import 'package:quickalert/quickalert.dart';

mixin ExceptionHandler {
  String handleError(error) {
    if (error is BadRequestException ||
        error is FetchDataException ||
        error is ApiNotRespondingException ||
        error is ServerException ||
        error is UnAuthorizedException ||
        error is NotFound) {
      QuickAlert.show(
        context: Get.context!,
        type: QuickAlertType.error,
        text: error.message ?? 'An unknown error occurred.',
      );
      log(error.message != null
          ? 'error: ${error.message}'
          : 'An unknown error occurred. Type $error. Url ${error.url}');
      return error.message ?? 'An unknown error occurred.';
    } else {
      log(error.toString());
      return error.toString();
    }
  }
}
