import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ecommerce_project/core/util/utils.dart';
import 'package:ecommerce_project/module/authentication/controller/authentication_controller.dart';
import 'package:ecommerce_project/module/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:icons_plus/icons_plus.dart';

class AuthenticationView extends GetView<AuthenticationController> {
  static String routeName = "/authentication";
  const AuthenticationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //* Image Container
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1680096283038-eaeb2f532cbc?q=80&w=1897&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                ),
              ),
            ),
          ),
          //* Black Shade Container on Image
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.05),
                  Colors.black.withOpacity(0.9),
                ],
              ),
            ),
          ),
          //* Sign in button
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: MaterialButton(
                onPressed: () async {
                  controller.signInWithGoogle();
                },
                color: HexColor('#5131e8'),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      BoxIcons.bxl_google,
                      color: Colors.white,
                    ),
                    addWidth(10),
                    Text(
                      "Sign in with Google",
                      style: googleFontStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
          //* Animated Text
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(width: 20.0, height: 100.0),
                const Text(
                  'Be',
                  style: TextStyle(fontSize: 43.0, color: Colors.white),
                ),
                const SizedBox(width: 20.0, height: 100.0),
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Horizon',
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText('AWESOME'),
                      RotateAnimatedText('OPTIMISTIC'),
                      RotateAnimatedText('DIFFERENT'),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
