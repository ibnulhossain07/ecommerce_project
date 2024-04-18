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
  ];
}

/*
  GetPage(
      name: ,
      page: () => ,
      binding: ,
    ),

*/
