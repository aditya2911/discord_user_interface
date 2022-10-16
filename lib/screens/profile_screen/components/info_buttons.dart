import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoButtons extends StatelessWidget {
  final String text;
  final Color color;
  const InfoButtons({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72.w,
      height: 30.h,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.r),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: color, padding: EdgeInsets.zero),
            onPressed: () {},
            child: AutoSizeText(
              text,
              maxLines: 1,
              style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w500),
            )),
      ),
    );
  }
}
