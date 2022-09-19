import 'package:flutter/material.dart';

class PathoLab extends StatelessWidget {
  const PathoLab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pathology Lab'),
      ),
      body: Stack(children: [
        Container(
          child: Image.asset('assets/images/pathLab.jpg'),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 130),
          child: Container(
            color: Color.fromARGB(50, 208, 226, 240),
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 2),
                    child: Text(
                      'Pathology Lab',
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
