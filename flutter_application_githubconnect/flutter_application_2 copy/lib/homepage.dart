import 'package:flutter/material.dart';
import 'package:flutter_application_2/candyland.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [],),
      backgroundColor: Colors.purple,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              Row(
                children: [
                  Text("Horizontal Scroll", style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 300,
                    height: 100,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple.shade400,
                    ),
                    child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CanyLand()),
              );
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Text('LOGIN'),
          ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 300,
                    height: 100,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple.shade400,
                    ), // BoxDecoration
                    child: Center (child: Text("YOUTUBE")), 
                  ),
                ]),
              ),
              
              SizedBox(height: 30),
              Row(
                children: [
                  Text("Vertical Scroll", style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 300,
                    height: 100,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple.shade400,
                    ), // BoxDecoration
                    child: Center (child: Text("YOUTUBE")), 
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 300,
                    height: 100,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple.shade400,
                    ), // BoxDecoration
                    child: Center (child: Text("YOUTUBE")), 
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 300,
                    height: 100,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple.shade400,
                    ), // BoxDecoration
                    child: Center (child: Text("YOUTUBE")), 
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 300,
                    height: 100,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple.shade400,
                    ), // BoxDecoration
                    child: Center (child: Text("YOUTUBE")), 
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 300,
                    height: 100,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple.shade400,
                    ), // BoxDecoration
                    child: Center (child: Text("YOUTUBE")), 
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 300,
                    height: 100,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple.shade400,
                    ), // BoxDecoration
                    child: Center (child: Text("YOUTUBE")), 
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 300,
                    height: 100,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple.shade400,
                    ), // BoxDecoration
                    child: Center (child: Text("YOUTUBE")), 
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 300,
                    height: 100,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple.shade400,
                    ), // BoxDecoration
                    child: Center (child: Text("YOUTUBE")), 
                  ),
                ]),
              )
            ],
            
          ),
        ),
      ),

      bottomNavigationBar: GNav(
        activeColor: Colors.amber,
         onTabChange: (index) {
          print(index);
        },
        tabs: const [
          GButton(icon: Icons.home),
          GButton(icon: Icons.favorite_border),
          GButton(icon: Icons.search),
          GButton(icon: Icons.account_circle),
          GButton(icon: Icons.settings),
        ],
      ),
    );
  }
}