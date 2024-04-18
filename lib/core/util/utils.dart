import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Dimensions {
  static double fontSizeExtraSmallSmall = 8;
  static double fontSizeExtraSmall = 10;
  static double fontSizeSmall = 12;
  static double fontSizeDefault = 14;
  static double fontSizeReasonHeading = 14;
  static double fontSizeReasonText = 12;
  static double fontSizeLarge = 16;
  static double fontSizeExtraLarge = 18;
  static double fontSizeExtraLarge22 = 22;
  static double fontSizeOverLarge = 26;
}

addPadding() {
  return EdgeInsets.only(left: 10, right: 10, top: 100.h, bottom: 20);
}

addHeight(double height) {
  return SizedBox(
    height: height.h,
  );
}

addWidth(double width) {
  return SizedBox(
    width: width.w,
  );
}

boldText({double? size = 15, Color? color, double? height = 1.2}) {
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: size,
    color: color,
    height: height,
  );
}

googleFontStyle({double? size = 15, Color? color}) {
  return GoogleFonts.rubik(
    fontWeight: FontWeight.bold,
    fontSize: size,
    color: color,
  );
}

boldWhiteText({double? size = 15}) {
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: size,
    color: Colors.white,
  );
}

customGoogleFont({
  double? size = 15,
  FontWeight? weight = FontWeight.w400,
  Color? color,
}) {
  return GoogleFonts.kanit(
    fontWeight: FontWeight.w400,
    fontSize: size,
    color: color,
  );
}

void showSnackbar({
  required String msg,
  bool? isSuccess,
  SnackPosition? position,
  int? duration,
}) {
  Get.snackbar(isSuccess != null ? 'Success' : 'Error Occurred!', msg,
      icon: Icon(
        isSuccess != null ? Icons.check_box_outlined : Icons.error,
        // color: isSuccess != null ? Colors.green : Colors.red,
        color: Colors.white,
      ),
      snackPosition: position ?? SnackPosition.TOP,
      animationDuration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(bottom: 20),
      duration: Duration(seconds: duration ?? 2),
      backgroundColor: isSuccess != null ? Colors.green : Colors.red,
      colorText: Colors.white,
      dismissDirection: DismissDirection.horizontal);
}
