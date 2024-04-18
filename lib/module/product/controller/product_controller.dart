import 'package:ecommerce_project/core/base_api/base_api_client.dart';
import 'package:ecommerce_project/core/base_api/exception_handler.dart';
import 'package:ecommerce_project/core/url/api_url.dart';
import 'package:ecommerce_project/module/home/model/product_list_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController with ExceptionHandler {
  RxBool isLoading = false.obs;
  RxString isError = "".obs;
  Rx<ProductListModel?> product = Rx<ProductListModel?>(null);

  getProductDetails() async {
    try {
      isLoading.value = true;
      var response = await BaseApiClient()
          .get(endPoint: "${ApiUrl.productDetails}${Get.arguments}");
      product.value = ProductListModel.fromJson(response);
    } catch (e) {
      isError.value = handleError(e);
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    getProductDetails();
    super.onInit();
  }
}
