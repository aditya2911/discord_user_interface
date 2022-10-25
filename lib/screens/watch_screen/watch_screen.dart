import 'package:flutter/material.dart';

import 'components/build_comment_container.dart';
import 'components/build_live_comment_container.dart';
import 'components/build_live_gameplay.dart';
import 'components/build_streamer_info_container.dart';

class WatchScreen extends StatelessWidget {
  const WatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.navigate_before)),
      ),
      body: Column(children: [
        const BuildLiveGameplay(),
        const BuildStreamerInfoContainer(),
        Expanded(
          child: Column(
            children: const [
              BuildLiveCommentContainer(),
              BuildCommentInputContainer()
            ],
          ),
        )
      ]),
    );
  }
}
