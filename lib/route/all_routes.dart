import 'package:ecommerce_project/module/authentication/bindings/authentication_bindings.dart';
import 'package:ecommerce_project/module/authentication/view/authentication_view.dart';
import 'package:ecommerce_project/module/favorite/bindings/favorite_bindings.dart';
import 'package:ecommerce_project/module/favorite/view/favorite_view.dart';
import 'package:ecommerce_project/module/home/bindings/home_bindings.dart';
import 'package:ecommerce_project/module/home/view/home_view.dart';
import 'package:ecommerce_project/module/product/bindings/product_bindings.dart';
import 'package:ecommerce_project/module/product/view/product_details.dart';
import 'package:ecommerce_project/module/splash/bindings/splash_bindlings.dart';
import 'package:ecommerce_project/module/splash/view/splash_view.dart';
import 'package:get/get.dart';

class AllRoutes {
  static List<GetPage> allRoutes = [
    GetPage(
      name: SplashView.routeName,
      page: () => const SplashView(),
      binding: SplashBindings(),
    ),
    GetPage(
      name: HomeView.routeName,
      page: () => const HomeView(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: AuthenticationView.routeName,
      page: () => const AuthenticationView(),
      binding: AuthenticationBindins(),
    ),
    GetPage(
      name: FavoriteView.routeName,
      page: () => const FavoriteView(),
      binding: FavoriteBindings(),
    ),
    GetPage(
      name: ProductDetailsView.routeName,
      page: () => const ProductDetailsView(),
      binding: ProductBindings(),
    ),
  ];
}

/*
  GetPage(
      name: ,
      page: () => ,
      binding: ,
    ),

*/
