import 'package:ecommerce_project/core/util/utils.dart';
import 'package:ecommerce_project/module/favorite/controller/favorite_controller.dart';
import 'package:ecommerce_project/widget/back_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class FavoriteView extends GetView<FavoriteController> {
  static String routeName = '/favorite';
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          children: [
            Row(
              children: [
                const CustomBackButton(),
                addWidth(20),
                Text(
                  "Favorite List",
                  style: customGoogleFont(size: 20),
                ),
              ],
            ),
            addHeight(20),
            Obx(
              () => controller.favoriteProductList.isEmpty
                  ? Center(
                      child: Column(
                        children: [
                          Text(
                            "No favorite added",
                            style: customGoogleFont(),
                          ),
                          addHeight(20),
                          IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const CircleAvatar(
                              backgroundColor: Colors.black12,
                              child: Icon(
                                BoxIcons.bx_plus,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => ListTile(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Colors.black12,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        leading: Image.network(
                          controller.favoriteProductList[index].image,
                        ),
                        title: Text(
                          controller.favoriteProductList[index].title,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: customGoogleFont(),
                        ),
                        subtitle: Text(
                          "\$ ${controller.favoriteProductList[index].price}",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: googleFontStyle(),
                        ),
                      ),
                      separatorBuilder: (context, index) => addHeight(20),
                      itemCount: controller.favoriteProductList.length,
                    ),
            )
          ],
        ),
      ),
    );
  }
}
