import 'package:flutter/material.dart';

class steps2 extends StatelessWidget {
  const steps2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
    appBar: AppBar(
        backgroundColor: Color.fromARGB(11, 0, 0, 0),
        title: const Text('Course   VIDEOS',
        style: const TextStyle(
                color:  const Color(0xffffffff),
      ))
      )
    );
  }
}