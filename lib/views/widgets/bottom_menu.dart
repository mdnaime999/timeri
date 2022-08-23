import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../controllers/menu_cont.dart';

class BottomMenu extends StatelessWidget {
  BottomMenu({Key? key}) : super(key: key);
  final MenuController menuController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedBottomNavigationBar.builder(
        height: 8.h,
        backgroundColor: Colors.grey[200],
        itemCount: 4,
        tabBuilder: (int index, bool isActive) {
          final color = isActive ? Colors.indigo : Colors.grey;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                menuController.menuList[index]['icon'],
                size: 24,
                color: color,
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  menuController.menuList[index]['name'],
                  maxLines: 1,
                  style: TextStyle(color: color),
                ),
              )
            ],
          );
        },
        activeIndex: menuController.menuIndex.value,
        gapWidth: 0,
        notchSmoothness: NotchSmoothness.defaultEdge,
        onTap: (index) => menuController.menuChange(context, index),
      ),
    );
  }
}
