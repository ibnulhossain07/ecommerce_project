import 'package:ecommerce_project/core/route/all_routes.dart';
import 'package:ecommerce_project/core/theme/color.dart';
import 'package:ecommerce_project/firebase_options.dart';
import 'package:ecommerce_project/module/splash/bindings/splash_bindlings.dart';
import 'package:ecommerce_project/module/splash/view/splash_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(480, 800),
      builder: (context, child) => GetMaterialApp(
        title: 'eCommerce',
        debugShowCheckedModeBanner: false,
        getPages: AllRoutes.allRoutes,
        initialBinding: SplashBindings(),
        initialRoute: SplashView.routeName,
        theme: ThemeData(
          colorScheme: colorScheme,
        ),
      ),
    );
  }
}
