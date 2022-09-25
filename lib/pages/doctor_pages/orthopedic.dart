import 'package:flutter/material.dart';

class Orthopedic extends StatefulWidget {
  const Orthopedic({super.key});

  @override
  State<Orthopedic> createState() => _OrthopedicState();
}

class _OrthopedicState extends State<Orthopedic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Orthopedic'),
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
                                'assets/images/dr/drmahfuz.png',
                                fit: BoxFit.fill,
                                height: 100,
                                width: 55,
                              ),
                              title: Text(
                                'DR. MD. MAHFUZUR RAHMAN',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                  'MBBS, BCS (Health)\nMS (Orthopedic Surgery), BSMMU\nConsultant (Orthopedic Surgeon)'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                })));
  }
}
