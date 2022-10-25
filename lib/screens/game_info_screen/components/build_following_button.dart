import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/colors.dart';

class BuildFollowingButton extends StatelessWidget {
  const BuildFollowingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
