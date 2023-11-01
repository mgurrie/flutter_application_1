import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'videos.dart';

class CanyLand extends StatefulWidget {
  @override
  _CandyLandState createState() => _CandyLandState();
}

class _CandyLandState extends State<CanyLand> {
  final _controller = PageController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          YouTubeScreen(),
        ],
        ),
    );
  }
}