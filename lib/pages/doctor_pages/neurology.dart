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
                              leading: CircleAvatar(
                                  radius: (30),
                                  backgroundColor: Colors.white,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      "assets/images/dr/drehsan.png",
                                      fit: BoxFit.cover,
                                      height: 200,
                                    ),
                                  )),
                              title: Text(
                                'PROFESSOR. DR. EHSAN MAHMOOD',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'MBBS, PHD(Neuro Surgery)\nBrain,Nerve & Spine Surgon\nFormer Prof. & Head of Department\nFelo,International College of Surgon(DMC)'),
                                  Container(
                                    width: 260,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Appointment',
                                        textAlign: TextAlign.end,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                })));
  }
}
