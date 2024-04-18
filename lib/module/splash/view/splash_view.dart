import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashView extends StatelessWidget {
  static String routeName = "/splash";
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: LoadingAnimationWidget.bouncingBall(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
