import 'package:ecommerce_project/core/util/utils.dart';
import 'package:ecommerce_project/module/home/controller/home_controller.dart';
import 'package:ecommerce_project/module/home/widget/home_app_bar.dart';
import 'package:ecommerce_project/module/home/widget/product_menu.dart';
import 'package:ecommerce_project/widget/loading_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  static String routeName = "/home";
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            const HomeAppBar(),
            addHeight(20),
            Obx(
              () => controller.isLoading.value
                  ? const LoadingAnimation()
                  : GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 250,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemCount: controller.productList.length,
                      itemBuilder: (context, index) => ProductMenu(
                        product: controller.productList[index],
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
