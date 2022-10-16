import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/colors.dart';
import '../../../config/image_assets_list.dart';

class buildSearchBar extends StatelessWidget {
  const buildSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 15.h),
        height: 97.h,
        width: 327.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 111.w,
              height: 30.h,
              child: FittedBox(
                child: Text(
                  "Watch Live",
                  style: TextStyle(
                    letterSpacing: 1.1,
                    fontWeight: FontWeight.bold,
                    color: AppColors.secondary.white,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 51.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    border:
                        Border.all(color: AppColors.secondary.white, width: 2)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.search,
                        color: AppColors.secondary.lightGray,
                        size: 25.sp,
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Text("Search live channels or streamers",
                          style: TextStyle(
                              color: AppColors.secondary.lightGray,
                              fontSize: 14.sp)),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
