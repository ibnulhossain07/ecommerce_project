import 'package:ecommerce_project/module/product/controller/product_controller.dart';
import 'package:get/get.dart';

class ProductBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductController());
  }
}
