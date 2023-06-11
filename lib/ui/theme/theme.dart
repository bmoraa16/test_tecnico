import 'package:flutter/material.dart';
import 'package:test_tecnico/utils/constants/color_constants.dart';

enum LosDeLaHeroicaTheme {
  dark,
}

final losDeLaHeroicaThemeData = {
  LosDeLaHeroicaTheme.dark: ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF7A27E5),
      primaryContainer: Color(0xFFECDCFF),
      onPrimaryContainer: Color(0xFF280057),
      secondary: Color(0xFF684FA3),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFE9DDFF),
      onSecondaryContainer: Color(0xFF23005B),
      tertiary: Color(0xFF855400),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFFFDDB7),
      onTertiaryContainer: Color(0xFF2A1700),
      error: Color(0xFFBA1A1A),
      errorContainer: Color(0xFFFFDAD6),
      onErrorContainer: Color(0xFF410002),
      background: Color(0xFFFFFBFF),
      onBackground: Color(0xFF2E004E),
      surface: Color(0xFFFFFBFF),
      onSurface: Color(0xFF2E004E),
      surfaceVariant: Color(0xFFE8E0EB),
      onSurfaceVariant: Color(0xFF49454E),
      outline: Color(0xFF7B757F),
      onInverseSurface: Color(0xFFFBECFF),
      inverseSurface: Color(0xFF461968),
      inversePrimary: Color(0xFFD6BAFF),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF7A27E5),
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: Color.alphaBlend(
        ColorConstants.lavenderBlue.withOpacity(.05),
        const Color(0xFF0A0514),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
    ),
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      backgroundColor: const Color(0xFF0A0514),
      actionsPadding: EdgeInsets.zero,
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return const Color(0xFF0A0514);
        } else {
          return const Color(0xFF0A0514);
        }
      }),
      side: const BorderSide(color: Color(0xFFC8C5D0)),
      fillColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return const Color(0xFF0A0514);
        } else {
          return const Color(0xFFC6BFFF);
        }
      }),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return ColorConstants.redButton.withOpacity(.12);
          } else {
            return ColorConstants.redButton;
          }
        }),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          );
        }),
        textStyle: MaterialStateProperty.resolveWith(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return TextStyle(
                foreground: Paint()..color = ColorConstants.lavenderWeb,
                fontFamily: 'Lexend',
                fontWeight: FontWeight.w400,
              );
            } else {
              return TextStyle(
                foreground: Paint()..color = ColorConstants.backgroundDark,
                fontFamily: 'Lexend',
                fontWeight: FontWeight.w400,
              );
            }
          },
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 16),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return ColorConstants.blueButton.withOpacity(.12);
          } else {
            return ColorConstants.blueButton;
          }
        }),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          );
        }),
        textStyle:
            MaterialStateProperty.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return TextStyle(
              foreground: Paint()
                ..color = ColorConstants.recibido.withOpacity(.12),
              fontFamily: 'Lexend',
              fontWeight: FontWeight.w400,
            );
          } else {
            return TextStyle(
              foreground: Paint()..color = ColorConstants.recibido,
              fontFamily: 'Lexend',
              fontWeight: FontWeight.w400,
            );
          }
        }),
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
    textTheme: ThemeData.light().textTheme.copyWith(
          displayLarge: TextStyle(
            fontFamily: 'Lexend',
            color: ColorConstants.magnolia,
            fontWeight: FontWeight.w400,
          ),
          displayMedium: TextStyle(
            fontFamily: 'Lexend',
            color: ColorConstants.magnolia,
            fontWeight: FontWeight.w400,
          ),
          displaySmall: TextStyle(
            fontFamily: 'Lexend',
            color: ColorConstants.magnolia,
            fontWeight: FontWeight.w400,
          ),
          headlineLarge: TextStyle(
            fontFamily: 'Lexend',
            color: ColorConstants.magnolia,
            fontWeight: FontWeight.w400,
          ),
          headlineMedium: TextStyle(
            fontFamily: 'Lexend',
            color: ColorConstants.magnolia,
            fontWeight: FontWeight.w400,
          ),
          headlineSmall: TextStyle(
            fontFamily: 'Lexend',
            color: ColorConstants.magnolia,
            fontWeight: FontWeight.w400,
          ),
          titleLarge: TextStyle(
            fontFamily: 'Lexend',
            color: ColorConstants.magnolia,
            fontWeight: FontWeight.w500,
          ),
          titleMedium: TextStyle(
            fontFamily: 'Lexend',
            color: ColorConstants.magnolia,
            fontWeight: FontWeight.w500,
          ),
          titleSmall: TextStyle(
            fontFamily: 'Lexend',
            color: ColorConstants.magnolia,
            fontWeight: FontWeight.w500,
          ),
          labelLarge: TextStyle(
            fontFamily: 'Lexend',
            color: ColorConstants.lavenderBlue,
            fontWeight: FontWeight.w500,
          ),
          labelMedium: TextStyle(
            fontFamily: 'Lexend',
            color: ColorConstants.magnolia,
            fontWeight: FontWeight.w500,
          ),
          labelSmall: TextStyle(
            fontFamily: 'Lexend',
            color: ColorConstants.magnolia,
            fontWeight: FontWeight.w500,
          ),
          bodyLarge: TextStyle(
            fontFamily: 'Lexend',
            color: ColorConstants.magnolia,
            fontWeight: FontWeight.w400,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Lexend',
            color: ColorConstants.magnolia,
            fontWeight: FontWeight.w400,
          ),
          bodySmall: TextStyle(
            fontFamily: 'Lexend',
            color: ColorConstants.magnolia,
            fontWeight: FontWeight.w500,
          ),
        ),
    iconTheme: const IconThemeData(color: Color(0xFFC8C5D0)),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateColor.resolveWith(
        (states) => ColorConstants.lavenderBlue,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: ColorConstants.lavenderGray,
      titleTextStyle: TextStyle(
        fontFamily: 'Lexend',
        color: ColorConstants.magnolia,
        fontWeight: FontWeight.w400,
        fontSize: 22,
      ),
      centerTitle: false,
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: Color.alphaBlend(
        ColorConstants.mauve.withOpacity(.05),
        const Color(0xFF120024),
      ),
      elevation: 10,
    ),
    chipTheme: ChipThemeData(
      labelStyle: TextStyle(
        foreground: Paint()..color = const Color(0xFF420089),
        fontFamily: 'Lexend',
        fontWeight: FontWeight.w500,
      ),
      backgroundColor: ColorConstants.backgroundDark,
      selectedColor: const Color(0xFFFFB95E),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(
          color: Color(0xFF928F99),
        ),
      ),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Color(0xFFC6BFFF),
    ),
    dividerTheme: const DividerThemeData(
      thickness: 1,
      indent: 0,
      endIndent: 0,
      color: Color(0xFF78767F),
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(4),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: const Color(0xFFD5C2FF).withOpacity(.24),
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(4),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.red),
        borderRadius: BorderRadius.circular(4),
      ),
    ),
    switchTheme: SwitchThemeData(
      trackColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return const Color(0xFFC6BFFF);
        } else {
          return const Color(0xFF47464F);
        }
      }),
      thumbColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return const Color(0xFF260B9A);
        } else {
          return const Color(0xFF928F99);
        }
      }),
    ),
  ),
};
