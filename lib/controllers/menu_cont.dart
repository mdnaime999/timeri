import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  RxInt menuIndex = 0.obs;
  RxInt menuIndexOld = 0.obs;
  List<Map<dynamic, dynamic>> menuList = [
    {"icon": Icons.home, "name": "Home"},
    {"icon": Icons.category, "name": "Category"},
    {"icon": Icons.account_circle, "name": "Account"},
    {"icon": Icons.shopping_cart_outlined, "name": "Cart"},
  ];

  void menuChange(BuildContext context, int index) {
    menuIndexOld.value = menuIndex.value;
    menuIndex.value = index;
    switch (index) {
    }
  }
}
