import 'package:ecommerce_project/module/home/model/product_list_model.dart';
import 'package:get/get.dart';

class FavoriteController extends GetxController {
  final favoriteProductList = <ProductListModel>[].obs;

  void toggleFavorite(ProductListModel product, bool isFavorite) {
    if (isFavorite) {
      favoriteProductList.add(product);
    } else {
      favoriteProductList.removeWhere((product) => product.id == product.id);
    }
  }
}
