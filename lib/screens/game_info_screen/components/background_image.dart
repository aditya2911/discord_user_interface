import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gen/assets.gen.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 420.h,
      child: Image.asset(
        const $AssetsImagesGen().fortnite.path,
        fit: BoxFit.cover,
      ),
    );
  }
}
