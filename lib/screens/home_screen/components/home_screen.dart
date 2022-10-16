import 'package:carousel_slider/carousel_slider.dart';
import 'package:discord_ui/config/colors.dart';
import 'package:discord_ui/config/image_assets_list.dart';
import 'package:discord_ui/gen/assets.gen.dart';
import 'package:discord_ui/screens/home_screen/components/buildBottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'buildGameSection.dart';
import 'buildLiveCarouselSlider.dart';
import 'buildSearchBar.dart';
import 'buildTopStreeamerSection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const buildBottomNavigationBar(),
      body: Column(
        children: [
          const buildSearchBar(),
          const buildLiveCarouselSlider(),
          const BuildGameSection(),
          const buildTopStreamerSection()
        ],
      ),
    );
  }
}
