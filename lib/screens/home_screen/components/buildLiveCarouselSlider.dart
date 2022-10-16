import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/colors.dart';
import '../../../config/image_assets_list.dart';

class buildLiveCarouselSlider extends StatelessWidget {
  const buildLiveCarouselSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 32.h),
      child: CarouselSlider(
        options: CarouselOptions(
          height: size.height > 812
              ? 150.h
              : size.height > 788
                  ? 150.h
                  : 160.h,
          aspectRatio: 10,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
        ),
        items: List.generate(5, (index) {
          return test(index, context, size);
        }).toList(),
      ),
    );
  }
}

Widget test(int index, BuildContext context, Size size) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(15.r),
    child: SizedBox(
      width: size.height > 700 ? 280.w : 260.w,
      child: Image.asset(
        imageAssetslist[5 + index].path,
        fit: BoxFit.cover,
      ),
    ),
  );
}
