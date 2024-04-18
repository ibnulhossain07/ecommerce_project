import 'package:ecommerce_project/core/base_api/base_api_client.dart';
import 'package:ecommerce_project/core/base_api/exception_handler.dart';
import 'package:ecommerce_project/core/url/api_url.dart';
import 'package:ecommerce_project/module/home/model/product_list_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with ExceptionHandler {
  RxBool isLoading = false.obs;
  RxString errorMessage = ''.obs;

  final productList = <ProductListModel>[].obs;

  getProductList() async {
    try {
      isLoading.value = true;
      var response = await BaseApiClient().get(endPoint: ApiUrl.productList);

      if (response != null && response is Iterable) {
        for (var x in response) {
          productList.add(ProductListModel.fromJson(x));
        }
      } else {
        throw Exception("Product Fetch Error");
      }
    } catch (e) {
      errorMessage.value = handleError(e);
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    getProductList();
    super.onInit();
  }
}
