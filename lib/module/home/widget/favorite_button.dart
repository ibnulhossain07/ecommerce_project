import 'package:ecommerce_project/module/favorite/controller/favorite_controller.dart';
import 'package:ecommerce_project/module/home/model/product_list_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class FavoriteButton extends StatefulWidget {
  final ProductListModel product;
  const FavoriteButton({
    super.key,
    required this.product,
  });

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });

        Get.find<FavoriteController>()
            .toggleFavorite(widget.product, isFavorite);
      },
      icon: CircleAvatar(
        backgroundColor: Colors.black12,
        child: Icon(
          BoxIcons.bx_heart,
          color: isFavorite ? Colors.red : null,
        ),
      ),
    );
  }
}
