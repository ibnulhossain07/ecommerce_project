import 'package:ecommerce_project/module/splash/controller/splash_controller.dart';
import 'package:get/get.dart';

class SplashBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashContrtoller());
  }
}
