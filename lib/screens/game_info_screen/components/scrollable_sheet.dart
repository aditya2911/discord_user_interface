import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/colors.dart';
import 'build_card.dart';

class ScrollableSheet extends StatelessWidget {
  const ScrollableSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 420.h,
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
                topLeft: Radius.circular(32.r),
                topRight: Radius.circular(32.r))),
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
              child: Text("Live Channels",
                  style: TextStyle(
                    color: AppColors.secondary.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.3,
                  )),
            ),
            Expanded(
              child: Align(
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 16.h),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const BuildCard();
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
