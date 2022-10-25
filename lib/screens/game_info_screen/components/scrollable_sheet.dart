import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/colors.dart';

class ScrollableSheet extends StatelessWidget {
  final Widget child;
  final String title;
  const ScrollableSheet({
    Key? key,
    required this.child,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [
                0.0,
                0.6,
              ],
              colors: [
                AppColors.secondary.darkGray.withOpacity(0.8),
                AppColors.primary.black,
              ]),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32.r), topRight: Radius.circular(32.r))),
      child: Column(
        children: [
          Container(
              height: 4.h,
              width: 80.w,
              color: AppColors.secondary.white,
              margin: EdgeInsets.symmetric(vertical: 10.h),
              child: Row()),
          Align(
            alignment: Alignment.topLeft,
            child: Text(title,
                style: TextStyle(
                  color: AppColors.secondary.white,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.3,
                )),
          ),
          Expanded(
            child: Align(child: child),
          )
        ],
      ),
    );
  }
}
