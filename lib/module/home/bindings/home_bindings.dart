import 'package:ecommerce_project/module/favorite/controller/favorite_controller.dart';
import 'package:ecommerce_project/module/home/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => FavoriteController());
  }
}
