import 'package:flutter/material.dart';

class Radiology extends StatelessWidget {
  const Radiology({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radiology & Imaging'),
      ),
      body: Stack(children: [
        Container(
          child: Image.asset('assets/images/radiology.jpg'),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 155),
          child: Container(
            color: Color.fromARGB(50, 208, 226, 240),
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 2),
                    child: Text(
                      'Radiology & Imaging',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
