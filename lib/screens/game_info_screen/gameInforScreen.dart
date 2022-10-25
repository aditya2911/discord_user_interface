import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/background_image.dart';
import 'components/build_card.dart';
import 'components/build_game_information.dart';
import 'components/gradient.dart';
import 'components/scrollable_sheet.dart';

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
          SizedBox(
            height: 420.h,
            child: Stack(children: const [
              BackgroundImage(),
              BackgroundGradient(),
              BuildGameInformation()
            ]),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 420.h,
              child: Expanded(
                child: ScrollableSheet(
                  title: 'Live Channels',
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 16.h),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const BuildCard();
                    },
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
