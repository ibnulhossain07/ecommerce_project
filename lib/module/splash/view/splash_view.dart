import 'package:ecommerce_project/module/splash/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashView extends StatelessWidget {
  static String routeName = "/splash";
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashContrtoller());
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor.withOpacity(.3),
      body: Center(
        child: LoadingAnimationWidget.bouncingBall(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
