import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../controllers/home_cont.dart';
import '../../controllers/splash_cont.dart';
import '../widgets/bottom_menu.dart';
import '../widgets/doctor_grid.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final SplashController splashController = Get.find();
  final HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 3.h),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 10.sp),
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.sp),
                    child: Card(
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.sp, vertical: 10.sp),
                        leading: SizedBox(
                          width: 15.w,
                          child: Image(
                            image: AssetImage('assets/docicon.png'),
                          ),
                        ),
                        title: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Any Available Doctor",
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 10.sp, vertical: 10.sp),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Choose a doctor",
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  DoctorGrid(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
