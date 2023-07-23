// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:sphara/utils/theme/theme.dart';

class DarkModeTheme extends FFTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFFF99546);
  late Color secondary = const Color(0xFFFFFFFF);
  late Color tertiary = const Color(0xFFB0B0B0);
  late Color alternate = const Color(0xFF505050);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFF707070);
  late Color primaryBackground = const Color(0xFF454545);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0xFFEEEEEE);
  late Color accent2 = const Color(0xFFE0E0E0);
  late Color accent3 = const Color(0xFF757575);
  late Color accent4 = const Color(0xFF616161);
  late Color success = const Color(0xFF04A24C);
  late Color warning = const Color(0xFFFCDC0C);
  late Color error = const Color(0xFFE21C3D);
  late Color info = const Color(0xFF1C4494);

  late Color primaryBtnText = const Color(0xFFFFFFFF);
  late Color lineColor = const Color(0xFFE0E3E7);
}

class LightModeTheme extends FFTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFFF99546);
  late Color secondary = const Color(0xFFFFFFFF);
  late Color tertiary = const Color(0xFFB0B0B0);
  late Color alternate = const Color(0xFF505050);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFF707070);
  late Color primaryBackground = const Color(0xFF454545);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0xFF616161);
  late Color accent2 = const Color(0xFF757575);
  late Color accent3 = const Color(0xFFE0E0E0);
  late Color accent4 = const Color(0xFFEEEEEE);
  late Color success = const Color(0xFF04A24C);
  late Color warning = const Color(0xFFFCDC0C);
  late Color error = const Color(0xFFE21C3D);
  late Color info = const Color(0xFF1C4494);

  late Color primaryBtnText = const Color(0xFFFFFFFF);
  late Color lineColor = const Color(0xFFE0E3E7);
}
