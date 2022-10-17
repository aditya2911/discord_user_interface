import 'package:flutter/material.dart';

import 'components/buildBottomNavigationBar.dart';
import 'components/buildGameSection.dart';
import 'components/buildLiveCarouselSlider.dart';
import 'components/buildSearchBar.dart';
import 'components/buildTopStreeamerSection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BuildBottomNavigationBar(),
      body: Column(
        children: const [
          BuildSearchBar(),
          BuildLiveCarouselSlider(),
          BuildGameSection(),
          BuildTopStreamerSection()
        ],
      ),
    );
  }
}
