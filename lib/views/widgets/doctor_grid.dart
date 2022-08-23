import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';
import 'package:timeri/config/contractors.dart';

import '../../controllers/home_cont.dart';

class DoctorGrid extends StatelessWidget {
  DoctorGrid({Key? key}) : super(key: key);
  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 10.sp),
        itemCount: homeController.doctors.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.sp,
          crossAxisSpacing: 10.sp,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (BuildContext context, int index) {
          var doctorItem = homeController.doctors[index];
          // print(InitVariable().baseUri(doctorItem['image']));
          return CachedNetworkImage(
            imageUrl: doctorItem['image'] != null
                ? InitVariable().baseUri(doctorItem['image'])
                : "https://ui-avatars.com/api/?name= + ${doctorItem['first_name'].replaceAll('+', ' ')}",
            imageBuilder: (context, imageProvider) => Card(
              child: Padding(
                padding: EdgeInsets.all(10.sp),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 12.w,
                      foregroundImage: imageProvider,
                    ),
                    SizedBox(height: 2.h),
                    Flexible(
                      child: Text(
                        doctorItem['first_name'],
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      doctorItem['phone'],
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (doctorItem['email'] != null) SizedBox(height: 1.h),
                    if (doctorItem['email'] != null)
                      Text(
                        doctorItem['email'],
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        overflow: TextOverflow.ellipsis,
                      )
                  ],
                ),
              ),
            ),
            placeholder: (context, url) => Shimmer.fromColors(
              baseColor: Colors.grey,
              highlightColor: Colors.white,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 12.w,
                        backgroundColor: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            errorWidget: (context, url, error) => Icon(Icons.error),
          );
        },
      ),
    );
  }
}
