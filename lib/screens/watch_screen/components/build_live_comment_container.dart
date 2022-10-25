import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/colors.dart';
import '../../../gen/assets.gen.dart';
import '../../game_info_screen/components/scrollable_sheet.dart';

class BuildLiveCommentContainer extends StatelessWidget {
  const BuildLiveCommentContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ScrollableSheet(
          title: "Comments",
          child: Container(
            margin: EdgeInsets.only(top: 8.h),
            child: ListView.builder(
              padding: EdgeInsets.only(top: 16.h),
              itemCount: 10,
              itemBuilder: (context, index) {
                return const BuildListTile();
              },
            ),
          )),
    );
  }
}

class BuildListTile extends StatelessWidget {
  const BuildListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        height: 40.h,
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: SizedBox(
              height: 40.h,
              width: 40.w,
              child: Image.asset(
                const $AssetsImagesGen().animated4.path,
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: AutoSizeText.rich(
            TextSpan(
                text: "Piyush",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary.lightOrange),
                children: [
                  TextSpan(
                      text: "       Enjoying the stream so far",
                      style: TextStyle(color: AppColors.secondary.white))
                ]),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
