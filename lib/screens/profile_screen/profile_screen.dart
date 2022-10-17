import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/colors.dart';
import '../../config/image_assets_list.dart';
import '../../gen/assets.gen.dart';
import 'components/info_buttons.dart';
import 'components/option_section.dart';
import 'components/user_data.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: 327.w,
        height: 0.35.sh,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(37.67.r),
              child: SizedBox(
                width: 110.w,
                height: 110.h,
                child: Image.asset(
                  const $AssetsImagesGen().animated1.path,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Theme(
              data: ThemeData(
                  textTheme: TextTheme(
                bodyText1: GoogleFonts.poppins(
                    fontSize: 11.sp, fontWeight: FontWeight.w500),
                bodyText2: GoogleFonts.poppins(
                    fontSize: 9.sp, fontWeight: FontWeight.w500),
              )),
              child: Padding(
                padding: EdgeInsets.only(top: 11.h),
                child: SizedBox(
                  height: 40.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InfoButtons(
                        text: "Online",
                        color: AppColors.secondary.lightGray,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      InfoButtons(
                        text: "LV. 78",
                        color: AppColors.primary.lightOrange,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            SizedBox(
              width: 261.w,
              height: 48.h,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text("SHAZTHEANIMATOR",
                    style: TextStyle(
                        fontFamily: "Proxima",
                        fontSize: 39.sp,
                        color: AppColors.secondary.white)),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: 327.w,
              height: 0.06899.sh,
              margin: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    UserData(
                      item: "Streams",
                      itemValue: "38",
                    ),
                    UserData(
                      item: "Followers",
                      itemValue: "87.8K",
                    ),
                    UserData(
                      item: "Following",
                      itemValue: "526",
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.ensureScreenSize();

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              leading: IconButton(
                splashRadius: 25,
                icon: const Icon(Icons.chevron_left),
                onPressed: () {},
              ),
              actions: [
                IconButton(
                    splashRadius: 25,
                    onPressed: () {},
                    icon: const Icon(Icons.settings))
              ]),
          body: DecoratedBox(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      AppColors.primary.black,
                      AppColors.primary.black,
                      AppColors.primary.lightOrange
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [
                      0,
                      0.2,
                      1,
                    ])),
            child: Column(
              children: const [
                ProfileContainer(),
                RecentTitles(),
              ],
            ),
          )),
    );
  }
}

class RecentTitles extends StatelessWidget {
  const RecentTitles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 23.74.h),
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xff1E1D1A), Color(0xff020202)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.vertical(top: Radius.circular(32.r))),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 16.66.h),
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: const OptionSection(),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: [
                    Container(
                      height: 110.h,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 23.h),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) => Container(
                          margin: EdgeInsets.only(right: 16.w),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.r),
                            child: SizedBox(
                              height: 110.h,
                              width: 90.w,
                              child: Image.asset(imageAssetslist[index].path,
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 69.h,
                      margin: EdgeInsets.only(top: 23.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "Achievments (2)",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.secondary.white),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 2,
                              itemBuilder: (context, index) => Container(
                                margin: EdgeInsets.only(right: 16.w),
                                child: ClipRRect(
                                  borderRadius:
                                      (MediaQuery.of(context).size.height < 685)
                                          ? BorderRadius.circular(15.67)
                                          : BorderRadius.circular(37.67),
                                  child: SizedBox(
                                    height: 40.h,
                                    width: 40.w,
                                    child: Image.asset(
                                        imageAssetslist[index].path,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 78.h,
                      margin: EdgeInsets.only(top: 24.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "Team (6)",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.secondary.white),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, index) => Container(
                                margin: EdgeInsets.only(right: 16.w),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.r),
                                  child: SizedBox(
                                    height: 48.h,
                                    width: 48.w,
                                    child: Image.asset(
                                        imageAssetslist[index].path,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
