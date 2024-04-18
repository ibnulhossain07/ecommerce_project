import 'package:flutter/material.dart';

const textColor = Color(0xFF0a1210);
const backgroundColor = Color(0xFFf7fbfa);
const primaryColor = Color(0xFF61b5a4);
const primaryFgColor = Color(0xFF0a1210);
const secondaryColor = Color(0xFF97d2c6);
const secondaryFgColor = Color(0xFF0a1210);
const accentColor = Color(0xFF79cab9);
const accentFgColor = Color(0xFF0a1210);

const colorScheme = ColorScheme(
  brightness: Brightness.light,
  background: backgroundColor,
  onBackground: textColor,
  primary: primaryColor,
  onPrimary: primaryFgColor,
  secondary: secondaryColor,
  onSecondary: secondaryFgColor,
  tertiary: accentColor,
  onTertiary: accentFgColor,
  surface: backgroundColor,
  onSurface: textColor,
  error: Brightness.light == Brightness.light
      ? Color(0xffB3261E)
      : Color(0xffF2B8B5),
  onError: Brightness.light == Brightness.light
      ? Color(0xffFFFFFF)
      : Color(0xff601410),
);
