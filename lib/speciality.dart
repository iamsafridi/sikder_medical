import 'package:flutter/material.dart';

class OurSpeciality extends StatelessWidget {
  const OurSpeciality({super.key, required this.child});

  final String child;

  // OurServices({required this.child})

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 5),
      child: Container(
        // height: 25,
        // color: Colors.blue[50],
        child: Stack(children: [
          Icon(
            Icons.check_circle,
            color: Colors.blue[900],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 2),
            child: Text(
              child,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ]),
      ),
    );
  }
}
