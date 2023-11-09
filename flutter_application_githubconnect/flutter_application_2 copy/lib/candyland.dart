import 'package:flutter/material.dart';
import 'package:flutter_application_2/steps.dart';
import 'package:flutter_application_2/YouTubeScreen.dart';
import 'package:flutter_application_2/steps2.dart';
//import 'package:google_nav_bar/google_nav_bar.dart';

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
        scrollDirection: Axis.horizontal,
        children: [
          steps(),
          steps2(),
          YouTubeScreen(),
        ],
        ),
    );
  }
}