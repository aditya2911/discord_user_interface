import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/colors.dart';

class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420.h,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.0, 0.15, 1],
          colors: [
            AppColors.primary.black,
            Colors.transparent,
            AppColors.primary.black
          ],
        ),
      ),
    );
  }
}
