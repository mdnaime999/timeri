import 'dart:async';

import 'package:get/get.dart';

import 'home_cont.dart';

class SplashController extends GetxController {
  HomeController homeC = Get.find<HomeController>();
  @override
  void onInit() {
    super.onInit();
    splashInitial();
  }

  void splashInitial() async {
    print('ready in 3...');
    await Future.delayed(Duration(seconds: 1));
    print('ready in 2...');
    await Future.delayed(Duration(seconds: 1));
    print('ready in 1...');
    await Future.delayed(Duration(seconds: 1));
    print('go!');
  }
}
