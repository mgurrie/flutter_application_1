import 'package:flutter/material.dart';
import 'package:flutter_application_2/CoursePage.dart';
import 'package:gap/gap.dart';
import 'dart:math' as math;


class steps extends StatelessWidget {
  final double curveHeight = 1040;
  const steps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(11, 0, 0, 0),
        title: const Text('COURSE   Videos',
        style: TextStyle(
                color:  Color(0xffffffff),
      ))),
    body:  SingleChildScrollView(
      child:
      Column (
    children:[
      const Divider( color: Colors.black,),
      Container(
        child: Text(
  'HTML',
  style: TextStyle(fontFamily: 'ShareTechMono', color: Colors.white, fontSize: 25),
  // (fontFamily: 'ShareTechMono-Regular', color: Colors.blue, letterSpacing: .5),
  ),
        
        margin: EdgeInsets.all(40),
        padding: EdgeInsets.all(20),
      ),
      Column(
        children:[
      Gap(115),
      Container(
        child: GestureDetector(
        onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CoursePage(),
                    ));
            },
            child: Center(child: Text('1')),
      ),
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.orange,
          
        ),
        margin: EdgeInsets.only(left: 90.0),
        padding: EdgeInsets.all(20),
          ),
        ]),
Gap(115),
Column(
  children:[
      Container(
        child: GestureDetector(
        onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CoursePage(),
                    ));
            },
            child: Center(child: Text('2')),
      ),
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.orange,
          
        ),
        //margin: EdgeInsets.all(40),
        padding: EdgeInsets.all(20),
          ),
  ]),
Gap(115),
Column(
  children:[
      Container(
        child: GestureDetector(
        onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CoursePage(),
                    ));
            },
            child: Center(child: Text('3')),
      ),
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.orange,
          
        ),
        margin: EdgeInsets.only(right: 90.0),
        padding: EdgeInsets.all(10),
          ),

    ]),
Gap(115),
Column(
  children:[
      Container(
        child: GestureDetector(
        onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CoursePage(),
                    ));
            },
            child: Center(child: Text('4')),
      ),
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.orange,
        //   image: DecorationImage(
        //     image: NetworkImage(
        //             "https://images.unsplash.com/photo-1579202673506-ca3ce28943ef"
        //             ),
        //     fit: BoxFit.cover
        // )
        ),
        //margin: EdgeInsets.all(40),
        padding: EdgeInsets.all(20),
          ),
  ]),
Gap(115),
Column(
        children:[
      Container(
        child: GestureDetector(
        onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CoursePage(),
                    ));
            },
            child: Center(child: Text('5')),
      ),
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.orange,
          
        ),
        margin: EdgeInsets.only(left: 90.0),
        padding: EdgeInsets.all(20),
          ),
        ]),
Gap(115),
Column(
  children:[
      Container(
        child: GestureDetector(
        onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CoursePage(),
                    ));
            },
            child: Center(child: Text('6')),
      ),
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.orange,
          
        ),
        //margin: EdgeInsets.all(40),
        padding: EdgeInsets.all(20),
          ),
  ]),
Gap(115),
Column(
  children:[
      Container(
        child: GestureDetector(
        onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CoursePage(),
                    ));
            },
            child: Center(child: Text('7')),
      ),
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.orange,
          
        ),
        margin: EdgeInsets.only(right: 90.0),
        padding: EdgeInsets.all(10),
          ),

    ]),
Gap(115),
Column(
  children:[
      Container(
        child: GestureDetector(
        onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CoursePage(),
                    ));
            },
            child: Center(child: Text('8')),
      ),
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.orange,
          
        ),
        //margin: EdgeInsets.all(40),
        padding: EdgeInsets.all(20),
          ),
  ]),
Gap(115),
Column(
        children:[
      Container(
        child: GestureDetector(
        onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CoursePage(),
                    ));
            },
            child: Center(child: Text('9')),
      ),
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.orange,
          
        ),
        margin: EdgeInsets.only(left: 90.0),
        padding: EdgeInsets.all(20),
          ),
        ]),
      ]),
    )
     );  
  }
}

// Custom painter class to draw the curve behind the buttons.
class CurvePainter extends CustomPainter {
  final double curveHeight = 1046;
  final int total;

  CurvePainter(curveHeight, this.total);

  // Paints the curve on the canvas.
@override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black // Color of the curve.
      ..style = PaintingStyle.stroke // Drawing a line without filling.
      ..strokeWidth = 4; // Thickness of the curve.

    const double amplitude = 50; // Amplitude of the sine wave.
    final double frequency = 2 *
        math.pi /
        curveHeight; // Frequency based on the height of the curve.

    final path = Path();
    path.moveTo(size.width / 2, 0); // Starting point at the top center.

    // Generate the sine wave path.
    for (double y = 0; y <= curveHeight; y++) {
      double x = size.width / 2 +
          amplitude *
              math.sin(frequency * y); // Apply the sine wave function for x.
      path.lineTo(x, y); // Draw the line to the next point.
    }

    canvas.drawPath(path, paint); // Render the path to the canvas.
  }

  // Determines if the painter should repaint.
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}  