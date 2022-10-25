import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/colors.dart';
import '../../game_info_screen/components/build_following_button.dart';

class BuildStreamerInfoContainer extends StatelessWidget {
  const BuildStreamerInfoContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      width: 327.w,
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 144.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Krish",
                    style: TextStyle(
                        color: AppColors.secondary.white,
                        fontSize: 20.sp,
                        letterSpacing: 1.3,
                        fontWeight: FontWeight.w600),
                  ),
                  AutoSizeText.rich(
                      TextSpan(
                          text: "Streaming Now",
                          style: TextStyle(
                              color: AppColors.primary.lightOrange,
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp),
                          children: [
                            TextSpan(
                                text: "- Dota2",
                                style: TextStyle(
                                    color: AppColors.secondary.lightGray,
                                    fontSize: 12.sp))
                          ]),
                      style: TextStyle(
                          color: AppColors.secondary.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400))
                ],
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: AppColors.secondary.white,
                )),
            const BuildFollowingButton()
          ],
        ),
      ),
    );
  }
}
