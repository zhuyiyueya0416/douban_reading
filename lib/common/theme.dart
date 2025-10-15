import 'package:flutter/material.dart';

import 'colors.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme:
      ColorScheme.fromSeed(
        seedColor: themeColors.dbcolor,
        brightness: Brightness.light,
      ).copyWith(
        surface: themeColors.gray_1, // 主背景色
        onSurface: Colors.black, // 主要文字
        surfaceVariant: themeColors.white, // 次要背景色
        onSurfaceVariant: themeColors.gray_2, // 次要文字
      ),

  // Page Transition Animations
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
    },
  ),

  // Card Theme
  cardTheme: CardThemeData(
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    color: Colors.white,
    shadowColor: Colors.black.withOpacity(0.1),
  ),

  // AppBar Theme
  appBarTheme: AppBarTheme(
    leadingWidth: 30,
    elevation: 0,
    backgroundColor: themeColors.dbcolor.withOpacity(0.09),
    foregroundColor: Colors.black,
    scrolledUnderElevation: 0,
    titleTextStyle: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    toolbarTextStyle: TextStyle(color: themeColors.dbcolor, fontSize: 20),
    actionsPadding: EdgeInsets.only(left: 10),
  ),
  tabBarTheme: const TabBarThemeData(
    labelColor: themeColors.dbcolor,
    labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    unselectedLabelColor: Colors.black,
    indicatorColor: themeColors.dbcolor,
    indicatorSize: TabBarIndicatorSize.label,
    dividerColor: Colors.transparent,
  ),

  // Elevated Button Theme
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: themeColors.dbcolor,
      foregroundColor: Colors.white,
      minimumSize: const Size(0, 50),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    ),
  ),

  // icon
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      iconSize: MaterialStateProperty.all(16),
      iconColor: MaterialStateProperty.resolveWith<Color?>((
        Set<MaterialState> states,
      ) {
        if (states.contains(MaterialState.pressed)) {
          return themeColors.dbcolor;
        }
        return Colors.black;
      }),
    ),
  ),

  // Text Button Theme
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      //foregroundColor: const Color(0xFF007AFF),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    ),
  ),

  // Input Decoration Theme
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: themeColors.gray_1,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: themeColors.dbcolor, width: 2),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 1),
    hintStyle: const TextStyle(color: themeColors.gray_2),
    labelStyle: const TextStyle(color: themeColors.gray_2),
  ),

  // FloatingActionButton Theme
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    elevation: 0,
    backgroundColor: themeColors.dbcolor,
    foregroundColor: Colors.white,
  ),

  // List Tile Theme
  listTileTheme: const ListTileThemeData(
    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
  ),

  //switch theme
  switchTheme: SwitchThemeData(
    //滑块颜色
    thumbColor: MaterialStateProperty.resolveWith<Color>((states) {
      return themeColors.white;
    }),
    //轨道颜色
    trackColor: MaterialStateProperty.resolveWith<Color>((states) {
      if (states.contains(MaterialState.selected)) {
        return themeColors.dbcolor;
      }
      return Colors.grey.shade300;
    }),
    // 轨道边框颜色
    trackOutlineColor: MaterialStateProperty.all<Color>(themeColors.dbcolor),
    // 轨道边框宽度
    trackOutlineWidth: MaterialStateProperty.all<double>(0.0),
  ),
);

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme:
      ColorScheme.fromSeed(
        seedColor: themeColors.dbcolor, // Apple Blue
        brightness: Brightness.dark,
      ).copyWith(
        surface: themeColors.black_1, // 主背景
        onSurface: themeColors.white, // 主文字
        surfaceVariant: themeColors.gray_4,
        onSurfaceVariant: themeColors.gray_2,
      ),

  // Page Transition Animations
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
    },
  ),

  // Card Theme
  cardTheme: CardThemeData(
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    color: themeColors.gray_4,
  ),

  // AppBar Theme
  appBarTheme: AppBarTheme(
    leadingWidth: 24,
    elevation: 0,
    backgroundColor: themeColors.dbcolor.withOpacity(0.09),
    foregroundColor: Colors.black,
    scrolledUnderElevation: 0,
    titleTextStyle: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    toolbarTextStyle: TextStyle(color: themeColors.dbcolor, fontSize: 20),
    actionsPadding: EdgeInsets.only(left: 10),
  ),
  // tabBarTheme: const TabBarThemeData(
  //   labelColor: themeColors.dbcolor,
  //   labelStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
  //   unselectedLabelColor: Colors.black,
  //   indicatorColor:themeColors.dbcolor,
  //   indicatorSize: TabBarIndicatorSize.label,
  //   dividerColor: Colors.transparent,
  // ),

  // Elevated Button Theme
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: themeColors.dbcolor,
      foregroundColor: Colors.white,
      //minimumSize: const Size(0, 50),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    ),
  ),

  // Text Button Theme
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      backgroundColor: themeColors.gray_4,
      foregroundColor: themeColors.white,
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    ),
  ),

  // Input Decoration Theme
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: themeColors.gray_3,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: themeColors.dbcolor, width: 2),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    hintStyle: const TextStyle(color: themeColors.gray_2),
    labelStyle: const TextStyle(color: themeColors.gray_2),
  ),

  // FloatingActionButton Theme
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    elevation: 0,
    backgroundColor: themeColors.dbcolor,
    foregroundColor: Colors.white,
  ),

  // List Tile Theme
  listTileTheme: const ListTileThemeData(
    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
  ),

  //switch theme
  switchTheme: SwitchThemeData(
    trackColor: MaterialStateProperty.resolveWith<Color>((states) {
      if (states.contains(MaterialState.selected)) {
        return themeColors.dbcolor;
      }
      return Colors.grey.shade300;
    }),
  ),
);
