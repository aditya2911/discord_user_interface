import 'package:auto_size_text/auto_size_text.dart';
import 'package:discord_ui/config/colors.dart';
import 'package:discord_ui/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GameInfoScreen extends StatelessWidget {
  const GameInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: SizedBox(
          width: 19.w,
          height: 19.h,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.navigate_before_outlined),
          ),
        ),
        actions: [
          Center(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
            ),
          ),
          SizedBox(
            width: 19.w,
          )
        ],
      ),
      body: Stack(
        children: [
          Stack(children: [
            SizedBox(
              width: double.infinity,
              height: 420.h,
              child: Image.asset(
                const $AssetsImagesGen().fortnite.path,
                fit: BoxFit.cover,
              ),
            ),
            Container(
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
            ),
          ]),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 420.h,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.secondary.darkGray.withOpacity(0.2),
                        AppColors.primary.black,
                      ]),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32.r),
                      topRight: Radius.circular(32.r))),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Live Channels",
                        style: TextStyle(
                          color: AppColors.secondary.white,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.3,
                        )),
                  ),
                  Expanded(
                    child: Align(
                      child: ListView.builder(
                        padding: EdgeInsets.only(top: 16.h),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return const BuildCard();
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

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
