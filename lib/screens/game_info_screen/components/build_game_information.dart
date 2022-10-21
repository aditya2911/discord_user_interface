import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/colors.dart';
import 'build_info_list.dart';

class BuildGameInformation extends StatelessWidget {
  const BuildGameInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 28.h),
        height: 175.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 14.h, left: 24.w, right: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "FORTNITE",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.5,
                        fontSize: 28.sp,
                        color: AppColors.secondary.white),
                  ),
                  SizedBox(
                    width: 101.w,
                    height: 38.h,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary.lightOrange,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.r))),
                        child: Text(
                          "Following",
                          style: TextStyle(color: AppColors.primary.black),
                        )),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30.h, left: 24.w),
              child: Row(
                children: [
                  BuildInfoList(
                    width: 119.w,
                    svgPath: "assets/svg/user.svg",
                    data: "7.2M",
                    metaData: "Followers",
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12.w),
                    child: BuildInfoList(
                      width: 130.w,
                      svgPath: "assets/svg/eye.svg",
                      data: "534.8K",
                      metaData: "viewers",
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
