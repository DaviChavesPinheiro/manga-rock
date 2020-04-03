import 'package:flutter/material.dart';

import 'all_screen.dart';
import 'forYou_screen.dart';
import 'latest_screen.dart';

class DiscoverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        ForYouScreen(),
        AllScreen(),
        LatestScreen(),
      ],
    );
  }
}
