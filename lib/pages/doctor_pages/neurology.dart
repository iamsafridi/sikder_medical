import 'package:flutter/material.dart';

class Neurology extends StatelessWidget {
  const Neurology({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Neurology'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Card(
                          // elevation: ,
                          shape: Border(bottom: BorderSide(color: Colors.blue)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Image.asset(
                                'assets/images/dr/drehsan.png',
                                fit: BoxFit.contain,
                                height: 100,
                                width: 55,
                              ),
                              title: Text(
                                'PROFESSOR. DR. EHSAN MAHMOOD',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                  'MBBS, PHD(Neuro Surgery)\nBrain,Nerve & Spine Surgon\nFormer Prof. & Head of Department\nFelo,International College of Surgon(DMC)'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                })));
  }
}
