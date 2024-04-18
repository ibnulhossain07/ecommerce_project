import 'package:ecommerce_project/module/favorite/view/favorite_view.dart';
import 'package:ecommerce_project/module/home/widget/custom_icon_button.dart';
import 'package:ecommerce_project/module/home/widget/search_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../core/util/utils.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 2,
          child: SearchBox(),
        ),
        addWidth(10),
        Expanded(
          child: Row(
            children: [
              CustomIconButton(
                onTap: () {
                  Get.toNamed(FavoriteView.routeName);
                },
                icon: BoxIcons.bx_heart,
              ),
              addWidth(5),
              CustomIconButton(
                onTap: () {},
                icon: BoxIcons.bx_cart,
              ),
            ],
          ),
        )
      ],
    );
  }
}
