import 'package:auto_size_text/auto_size_text.dart';
import 'package:discord_ui/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UserData extends StatelessWidget {
  final String itemValue;
  final String item;
  const UserData({
    Key? key,
    required this.itemValue,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          flex: 2,
          child: AutoSizeText(
            itemValue,
            maxLines: 1,
            style: GoogleFonts.poppins(
                fontSize: 24.sp,
                color: AppColors.primary.lightOrange,
                fontWeight: FontWeight.w700),
          ),
        ),
        Flexible(
          child: AutoSizeText(
            item,
            maxLines: 1,
            style: GoogleFonts.poppins(
                fontSize: 12.sp,
                color: AppColors.secondary.white,
                fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
