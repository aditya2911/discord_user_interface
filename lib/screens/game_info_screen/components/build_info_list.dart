import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/colors.dart';

class BuildInfoList extends StatelessWidget {
  final double width;
  final String svgPath;
  final String data;
  final String metaData;
  const BuildInfoList({
    Key? key,
    required this.width,
    required this.svgPath,
    required this.data,
    required this.metaData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24.h,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            child: SvgPicture.asset(
              svgPath,
              color: AppColors.secondary.white,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            data,
            style: TextStyle(
                color: AppColors.primary.lightOrange,
                fontWeight: FontWeight.w600,
                fontSize: 16.sp),
          ),
          Text(
            metaData,
            style: TextStyle(fontSize: 12.sp, color: AppColors.secondary.white),
          )
        ],
      ),
    );
  }
}
