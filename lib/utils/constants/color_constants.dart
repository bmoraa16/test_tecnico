import 'package:flutter/material.dart';

class ColorConstants {
  static Color hexToColor(String hex) {
    assert(
      RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa',
    );

    return Color(
      int.parse(hex.substring(1), radix: 16) +
          (hex.length == 7 ? 0xff000000 : 0x00000000),
    );
  }

  static Color error = hexToColor('#FFB4A9');
  static Color onError = hexToColor('#680003');
  static Color recibido = hexToColor('#70DBA7');
  static Color onRecibido = hexToColor('#003824');
  static Color ultramarine = hexToColor('#260B9A');
  static Color onSurface = hexToColor('#EADDFF');
  static Color haiti = hexToColor('#1C1B1F');
  static Color grayColor = hexToColor('#38304C');
  static Color blueViolet = hexToColor('#9370DB');
  static Color burlywood = hexToColor('#A0522D');
  static Color redButton = hexToColor('#A50202');
  static Color lavenderWeb = hexToColor('#EEDBFF');
  static Color platinum = hexToColor('#E6E1E6');
  static Color blueButton = hexToColor('#6495ED');
  static Color magnolia = hexToColor('#F3EFFB');
  static Color lavenderBlue = hexToColor('#C6BFFF');
  static Color lavenderGray = hexToColor('#CBC4CF');
  static Color backgroundDark = hexToColor('#0A0514');
  static Color mauve = hexToColor('#D6BAFF');
}
