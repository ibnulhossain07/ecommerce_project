import 'dart:async';

import 'package:ecommerce_project/module/home/view/home_view.dart';
import 'package:get/get.dart';

class SplashContrtoller extends GetxController {
  splashTimer() async {
    Timer(const Duration(seconds: 2), () {
      Get.toNamed(HomeView.routeName);
    });
  }

  @override
  void onInit() {
    splashTimer();
    super.onInit();
  }
}
