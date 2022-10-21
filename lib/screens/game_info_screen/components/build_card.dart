import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/colors.dart';
import '../../../gen/assets.gen.dart';

class BuildCard extends StatelessWidget {
  const BuildCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: SizedBox(
        height: 100.h,
        width: double.infinity,
        child: Row(
          children: [
            SizedBox(
              width: 160.w,
              height: 100.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.asset(
                  const $AssetsImagesGen().gameplay1.path,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 24.h,
                      child: AutoSizeText(
                        "Game Pro Tips",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: AppColors.secondary.white,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.1,
                        ),
                      )),
                  SizedBox(
                    height: 16.h,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 16.w,
                          height: 16.h,
                          child: FittedBox(
                            child: Icon(Icons.remove_red_eye,
                                color: AppColors.secondary.lightGray),
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        AutoSizeText(
                          "78.4K Viewers",
                          style: TextStyle(
                            color: AppColors.secondary.lightGray,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8.h),
                    child: SizedBox(
                      height: 32.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: 32.w,
                              height: 32.h,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.r),
                                child: Image.asset(
                                  const $AssetsImagesGen().animated4.path,
                                  fit: BoxFit.cover,
                                ),
                              )),
                          SizedBox(
                            width: 8.w,
                          ),
                          AutoSizeText(
                            "Rishabh",
                            style: TextStyle(
                              color: AppColors.secondary.white,
                            ),
                          )
                        ],
                      ),
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
