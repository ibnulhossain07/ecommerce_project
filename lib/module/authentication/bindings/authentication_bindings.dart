import 'package:ecommerce_project/module/authentication/controller/authentication_controller.dart';
import 'package:get/get.dart';

class AuthenticationBindins implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthenticationController());
  }
}
