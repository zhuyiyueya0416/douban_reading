import 'package:douban_reading/states/auth_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import '../common/theme.dart';
import '../generated/l10n.dart';
import '../states/theme_provider.dart';
import '../widgets/bottom_bar.dart';
import 'login/login_route.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()..initialize()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeChange, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            // 设置语言
            locale: const Locale('zh'),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate
            ],
            // zh设置为第一项,没有适配语言时，英语为首选项
            supportedLocales: S.delegate.supportedLocales,
            title: 'DoubanReading',
            theme: themeChange.isLight ? lightTheme : darkTheme,
            home: Consumer<AuthProvider>(
              builder: (context, authProvider, _) {
                // 使用 isLoggedIn 方法判断用户登录状态
                return authProvider.isLoggedIn ? BottomBar() : LoginRoute();
              },
            ),
          );
        },
      ),
    );
  }
}