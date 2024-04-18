import 'package:ecommerce_project/core/util/utils.dart';
import 'package:ecommerce_project/module/home/widget/favorite_button.dart';
import 'package:ecommerce_project/module/product/controller/product_controller.dart';
import 'package:ecommerce_project/widget/back_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsView extends GetView<ProductController> {
  static String routeName = "/product";

  const ProductDetailsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => controller.isLoading.value
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomBackButton(),
                      FavoriteButton(product: controller.product.value!)
                    ],
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(controller.product.value!.image),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  addHeight(20),
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: ListView(
                        children: [
                          Text(
                            controller.product.value!.title,
                            style: customGoogleFont(size: 20),
                          ),
                          addHeight(10),
                          Text(
                            "Description",
                            style: googleFontStyle(size: 25),
                          ),
                          addHeight(10),
                          Text(
                            controller.product.value!.description,
                            style: customGoogleFont(weight: FontWeight.normal),
                          ),
                          addHeight(10),
                          Text(
                            "Price",
                            style: googleFontStyle(size: 25),
                          ),
                          Text(
                            "\$ ${controller.product.value!.price}",
                            style: customGoogleFont(size: 25),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
    ));
  }
}
