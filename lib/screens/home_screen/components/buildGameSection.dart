import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/colors.dart';
import '../../../config/image_assets_list.dart';

class BuildGameSection extends StatelessWidget {
  const BuildGameSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 364.w,
        height: 83.h,
        margin: EdgeInsets.only(top: 32.h, left: 24.w),
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(15, ((index) {
              return Container(
                height: double.infinity,
                width: 60.w,
                margin: EdgeInsets.only(right: 16.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 60.h,
                        width: 60.w,
                        padding: EdgeInsets.all(10.sp),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 199, 181, 238),
                            borderRadius: BorderRadius.circular(15.r)),
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/svg/overwatch.svg",
                            color: AppColors.secondary.white,
                          ),
                        )),
                    SizedBox(
                        height: 15.h,
                        child: FittedBox(
                            child: Text(
                          "Overwatch",
                          style:
                              TextStyle(color: AppColors.secondary.lightGray),
                        )))
                  ],
                ),
              );
            }))));
  }
}
