import 'package:get/get.dart';

import '../controllers/home_cont.dart';
import '../controllers/menu_cont.dart';
import '../controllers/splash_cont.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<SplashController>(() => SplashController());
  }
}

class MenuBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenuController>(() => MenuController());
  }
}
