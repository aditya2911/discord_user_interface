import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/colors.dart';

class OptionSection extends StatelessWidget {
  const OptionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        OptionTabs(
          text: 'Games',
          isEnabled: true,
        ),
        OptionTabs(
          text: 'Post',
        ),
        OptionTabs(
          text: 'About',
        ),
      ],
    );
  }
}

class OptionTabs extends StatelessWidget {
  final String text;
  final bool isEnabled;
  const OptionTabs({
    Key? key,
    required this.text,
    this.isEnabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 109.w,
        height: 40.h,
        child: OutlinedButton(
          onPressed: isEnabled ? () {} : null,
          style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.primary.lightOrange,
              disabledForegroundColor: Colors.transparent,
              shape: isEnabled
                  ? RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r))
                  : null,
              side: isEnabled
                  ? BorderSide(width: 2, color: AppColors.primary.lightOrange)
                  : null),
          child: Text(
            text,
            style: TextStyle(
                color: isEnabled
                    ? AppColors.primary.lightOrange
                    : AppColors.secondary.lightGray,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600),
          ),
        ));
  }
}
