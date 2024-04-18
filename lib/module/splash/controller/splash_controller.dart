import 'dart:async';
import 'package:ecommerce_project/module/authentication/view/authentication_view.dart';
import 'package:get/get.dart';

class SplashContrtoller extends GetxController {
  splashTimer() async {
    Timer(const Duration(seconds: 2), () {
      Get.toNamed(AuthenticationView.routeName);
    });
  }

  @override
  void onInit() {
    splashTimer();
    super.onInit();
  }
}
