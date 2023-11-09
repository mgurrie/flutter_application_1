import 'package:flutter/material.dart';

class firstscreen extends StatefulWidget { 
  @override
  _firstscreenState createState() => _firstscreenState();
}


class _firstscreenState extends State<firstscreen> {
  @override 
  Widget build (BuildContext context) {
  return Scaffold(
    appBar: AppBar( 
      //automaticallyImplyLeading: false,
      title: Text(
        "Assignments",
      ),
    ),
    body: Container(
      alignment: Alignment.center,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "First Page",
          textAlign: TextAlign.center,
          style: TextStyle( fontSize: 40.0,
            fontFamily: "Times New Roman", 
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                backgroundColor: Colors.green,
                padding: const EdgeInsets.all(16.0),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Home Screen",
                style: TextStyle(
                fontSize: 20.0,
                ),
              ),
          ),
        ),
      ],
      ),
    ),
  );
  }
}
