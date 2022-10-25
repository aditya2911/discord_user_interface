import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/colors.dart';

class BuildCommentInputContainer extends StatelessWidget {
  const BuildCommentInputContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60.h,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 16.w),
        child: TextField(
          cursorColor: AppColors.primary.lightOrange,
          style: TextStyle(color: AppColors.secondary.lightGray),
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
            hintStyle: TextStyle(color: AppColors.secondary.lightGray),
            hintText: "Say Something ...",
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.primary.lightOrange,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(
                15.r,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: AppColors.secondary.lightGray, width: 2),
              borderRadius: BorderRadius.circular(15.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: AppColors.primary.lightOrange, width: 2),
              borderRadius: BorderRadius.circular(15.r),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: AppColors.primary.lightOrange, width: 2),
              borderRadius: BorderRadius.circular(15.r),
            ),
          ),
        ),
      ),
    );
  }
}
