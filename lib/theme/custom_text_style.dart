import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get neueMontreal {
    return copyWith(
      fontFamily: 'Neue Montreal',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get mulish {
    return copyWith(
      fontFamily: 'Mulish',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodyMediumPinkA200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.pinkA200,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallNeueMontrealGray500 =>
      theme.textTheme.bodySmall!.neueMontreal.copyWith(
        color: appTheme.gray500,
      );
  static get bodySmallNeueMontrealGray600 =>
      theme.textTheme.bodySmall!.neueMontreal.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallPoppinsGray700 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmallPoppinsGray800 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray800,
      );
  static get bodySmallPoppinsGreen400 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.green400,
      );
  static get bodySmallPoppinsPinkA200 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.pinkA200,
      );
  static get bodySmallPoppinsPrimaryContainer =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
// Label text style
  static get labelLargeBluegray40001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray40001,
      );
  static get labelLargeBluegray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelLargePoppinsGray800 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumPoppinsGray800 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w600,
      );
// Title text style
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumMulishErrorContainer =>
      theme.textTheme.titleMedium!.mulish.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPoppinsErrorContainer =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 16.fSize,
      );
  static get titleMediumPoppinsGray50 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray50,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsGray80001 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray80001,
        fontSize: 16.fSize,
      );
  static get titleMediumPoppinsPrimary =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get titleSmallGray50 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 15.fSize,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppins => theme.textTheme.titleSmall!.poppins;
  static get titleSmallRobotoGray70001 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.gray70001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoOnPrimary =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
}
