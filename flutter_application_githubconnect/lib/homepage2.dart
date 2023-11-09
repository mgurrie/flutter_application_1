import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'profile.dart';
import 'videos.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  String? _expandedButtonTitle; // to keep track of which button is expanded

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      buildHomeComponents(),
      PlaceholderWidget(color: Colors.white),
      PlaceholderWidget(color: Colors.white),
      PlaceholderWidget(color: Colors.white),
      PlaceholderWidget(color: Colors.white),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: SafeArea(
          child: GNav(
            tabBackgroundColor: Colors.transparent,
            gap: 10,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            tabs: [
              GButton(
                icon: Icons.home,
                iconColor: Colors.white,
                iconActiveColor: Colors.blue,
              ),
              GButton(
                icon: Icons.favorite_border,
                iconColor: Colors.white,
                iconActiveColor: Colors.blue,
              ),
              GButton(
                icon: Icons.search,
                iconColor: Colors.white,
                iconActiveColor: Colors.blue,
              ),
              GButton(
                icon: Icons.account_circle,
                iconColor: Colors.white,
                iconActiveColor: Colors.blue,
              ),
              GButton(
                icon: Icons.settings,
                iconColor: Colors.white,
                iconActiveColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHomeComponents() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                buildVerticalButton("HTML/CSS"),
                buildVerticalButton("C++"),
                buildVerticalButton("JAVA"),
                buildVerticalButton("OTHER"),
                buildVerticalButton("OTHER2"),
              ]),
            )
          ],
        ),
      ),
    );
  }

  Widget buildVerticalButton(String title) {
    bool isExpanded = _expandedButtonTitle == title;

    // Custom style for the ElevatedButton
    final ButtonStyle customButtonStyle = ElevatedButton.styleFrom(
      primary: Colors.blue, // Button color
      onPrimary: Colors.white, // Text color
      padding:
          EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Button padding
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), // Rounded corners
      ),
    );

    return InkWell(
      onTap: () {
        setState(() {
          if (isExpanded) {
            _expandedButtonTitle = null; // collapse the button
          } else {
            _expandedButtonTitle = title; // expand the button
          }
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        margin: EdgeInsets.all(10),
        width: 400,
        height: isExpanded ? MediaQuery.of(context).size.height - 150 : 100,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Color.fromARGB(255, 87, 87, 87).withOpacity(0.9),
        ),
        child: isExpanded
            ? Column(
                children: [
                  Text(title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      )),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Details for $title",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to the specific page related to this button
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => getProfilePage(
                              title), // Use the helper function to get the desired page
                        ),
                      );
                    },
                    child: Text("$title Course"),
                    style: customButtonStyle, // Apply the custom button style
                  ),
                ],
              )
            : Center(
                child: Text(title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    )),
              ),
      ),
    );
  }

// Modified helper function to return the desired page based on title

  // Modified helper function to return the desired page based on title
  Widget getProfilePage(String title) {
    if (title == "HTML/CSS") {
      return ProfilePage(); // Navigate to ProfilePage
    } else if (title == "C++") {
      return YouTubeScreen(); // Navigate to YouTubeScreen
    } else {
      return ProfilePage(); // Default navigation
    }
  }
}

class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
