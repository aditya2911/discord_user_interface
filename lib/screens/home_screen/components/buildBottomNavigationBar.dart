import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/colors.dart';

class BuildBottomNavigationBar extends StatelessWidget {
  const BuildBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(color: AppColors.secondary.lightGray, width: 1))),
      child: BottomNavigationBarTheme(
        data: BottomNavigationBarThemeData(
          selectedItemColor: AppColors.primary.lightOrange,
          unselectedItemColor: AppColors.secondary.lightGray,
          backgroundColor: AppColors.primary.black,
          selectedIconTheme:
              IconThemeData(color: AppColors.primary.lightOrange),
          unselectedIconTheme: IconThemeData(
            color: AppColors.secondary.lightGray,
          ),
          selectedLabelStyle: TextStyle(fontSize: 11.sp),
          unselectedLabelStyle: TextStyle(fontSize: 11.sp),
        ),
        child: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 24.sp,
              ),
              label: "Following"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.compare_arrows_sharp,
              size: 24.sp,
            ),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.file_copy_sharp,
              size: 24.sp,
            ),
            label: "Browse",
          ),
        ]),
      ),
    );
  }
}
