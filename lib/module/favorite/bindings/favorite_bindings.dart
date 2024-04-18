import 'package:ecommerce_project/module/favorite/controller/favorite_controller.dart';
import 'package:get/get.dart';

class FavoriteBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavoriteController());
  }
}
