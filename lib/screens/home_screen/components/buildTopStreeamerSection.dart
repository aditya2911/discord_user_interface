import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/colors.dart';
import '../../../config/image_assets_list.dart';

class BuildTopStreamerSection extends StatelessWidget {
  const BuildTopStreamerSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 556.w,
        height: 196.h,
        margin: EdgeInsets.only(left: 24.w, top: 32.h),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              width: 193.w,
              height: 30.h,
              alignment: Alignment.centerLeft,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text("Top Streamers Live",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.1,
                        color: AppColors.secondary.white)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 24.w),
              child: SizedBox(
                  width: 44.w,
                  height: 15.h,
                  child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "View all",
                        style: TextStyle(color: AppColors.secondary.lightGray),
                      ))),
            ),
          ]),
          Container(
            margin: EdgeInsets.only(top: 16.h),
            width: double.infinity,
            height: 150.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                    margin: EdgeInsets.only(right: 16.w),
                    width: MediaQuery.of(context).size.height > 795
                        ? 270.w
                        : MediaQuery.of(context).size.height > 686
                            ? 240.w
                            : 210.w,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.r),
                      child: Image.asset(
                        imageAssetslist[index + 5].path,
                        fit: BoxFit.cover,
                      ),
                    ));
              },
            ),
          )
        ]));
  }
}
