import 'package:ecommerce_project/core/util/utils.dart';
import 'package:ecommerce_project/module/home/model/product_list_model.dart';
import 'package:ecommerce_project/module/home/widget/favorite_button.dart';
import 'package:flutter/material.dart';

class ProductMenu extends StatelessWidget {
  final ProductListModel product;
  const ProductMenu({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black26,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  product.image,
                ),
              ),
            ),
          ),
          addHeight(5),
          Text(
            product.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: customGoogleFont(),
          ),
          addHeight(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                ),
                child: Text(
                  "\$ ${product.price}",
                  style: customGoogleFont(
                    size: 18,
                    weight: FontWeight.bold,
                  ),
                ),
              ),
              FavoriteButton(
                product: product,
              )
            ],
          ),
        ],
      ),
    );
  }
}
