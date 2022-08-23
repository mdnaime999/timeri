import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:timeri/route/bindings.dart';

import 'config/contractors.dart';
import 'config/theme/dark_theme.dart';
import 'config/theme/light_theme.dart';
import 'route/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: InitVariable().appName,
        theme: light,
        darkTheme: dark,
        themeMode: Get.isDarkMode ? ThemeMode.dark : ThemeMode.light,
        initialBinding: SplashBinding(),
        initialRoute: RouteManeger.home,
        getPages: RouteManeger.routes,
      );
    });
  }
}
