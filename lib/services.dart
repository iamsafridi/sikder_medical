import 'package:flutter/material.dart';

class OurServices extends StatelessWidget {
  const OurServices({super.key, required this.child});

  final String child;

  // OurServices({required this.child})

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 30,
        // color: Colors.blue[50],
        child: Center(
            child: Text(
          child,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
