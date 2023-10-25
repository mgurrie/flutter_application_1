import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Mockup',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  Widget _buildBadge(String text, IconData icon, double progress,
      {Color color = Colors.black}) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color.fromARGB(255, 211, 211, 211),
      ),
      width: 160,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 40.0, color: color),
          SizedBox(height: 5),
          Text(text, style: TextStyle(fontSize: 16)),
          SizedBox(height: 10),
          LinearProgressIndicator(value: progress),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 40.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, bottom: 10),
                    child: CircleAvatar(
                      radius: 50,
                      child: Icon(Icons.person, size: 50),
                    ),
                  ),
                  SizedBox(width: 40),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Michael Elrod',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Text('mselrod@clemson.edu'),
                        SizedBox(height: 5),
                        Text('Joined April 25, 2023'),
                      ],
                    ),
                  )
                ],
              ),
              Divider(thickness: 1.0),
              SizedBox(height: 10),
              Text('Statistics',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Center(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    _buildBadge('4194 points', Icons.stars, 0.9,
                        color: Colors.yellow),
                    _buildBadge('4 day streak', Icons.flash_on, 0.6,
                        color: Colors.red),
                    _buildBadge('12 assignments', Icons.check, 0.8,
                        color: Colors.green),
                    _buildBadge('2 courses', Icons.book, 0.9,
                        color: Colors.blue),
                    _buildBadge('5 videos', Icons.video_call, 0.5,
                        color: Colors.red),
                  ],
                ),
              ),
              Divider(thickness: 1.0),
              SizedBox(height: 10),
              Text('Achievements',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Center(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    _buildBadge('30 day streak', Icons.stars, 1.0,
                        color: Colors.red),
                    _buildBadge('3 rewards', Icons.star, 0.4,
                        color: Colors.yellow),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
