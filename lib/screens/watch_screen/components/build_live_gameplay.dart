import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gen/assets.gen.dart';

class BuildLiveGameplay extends StatelessWidget {
  const BuildLiveGameplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300.h,
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              const $AssetsImagesGen().liveGampeplay.path,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 80.h,
              width: 80.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.r),
                    topRight: Radius.circular(15.r)),
              ),
              child: Image.asset(
                const $AssetsImagesGen().streamers.path,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
    );
  }
}
