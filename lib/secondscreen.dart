import 'package:flutter/material.dart';

class secondscreen extends StatefulWidget { 
  @override
  _secondscreenState createState() => _secondscreenState();
}


class _secondscreenState extends State<secondscreen> {
  @override 
  Widget build (BuildContext context) {
  return Scaffold(
    appBar: AppBar( 
      title: Text(
        "Videos",
      ),
    ),
    body: Container(
      alignment: Alignment.center,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Second Page",
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
        Padding(
            padding: EdgeInsets.all(10.0),
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
                padding: const EdgeInsets.all(16.0),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/video');
              },
              child: Text(
                "To Video",
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
