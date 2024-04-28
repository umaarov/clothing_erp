import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
// Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration();
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.gray5001,
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray10001,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray10001 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray10001,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray100011 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray10001,
          width: 1.h,
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineIndigo => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: appTheme.indigo50,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineSecondaryContainer => BoxDecoration();
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder24 => BorderRadius.circular(
        24.h,
      );
// Rounded borders
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}
