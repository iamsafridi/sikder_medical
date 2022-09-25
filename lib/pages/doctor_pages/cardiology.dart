import 'package:flutter/material.dart';

class Cardiology extends StatefulWidget {
  const Cardiology({super.key});

  @override
  State<Cardiology> createState() => _CardiologyState();
}

class _CardiologyState extends State<Cardiology> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cardiology'),
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
                                'assets/images/dr/drmahboob.png',
                                fit: BoxFit.cover,
                                height: 100,
                                width: 55,
                              ),
                              title: Text(
                                'PROFESSOR DR.MAHBOOB ALI',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                  'MBBS, MD\nFCPS, FSCAI\nTrends in Interventional Cardiology\nSenior Consultant (Cardiology Specialist)'),
                            ),
                          ),
                        ),
                        Card(
                          // elevation: ,
                          shape: Border(bottom: BorderSide(color: Colors.blue)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Image.asset(
                                'assets/images/dr/draman.png',
                                fit: BoxFit.cover,
                                height: 100,
                                width: 55,
                              ),
                              title: Text(
                                'DR.AMANULLAH BIN SIDDIQ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                  'MBBS (DMC), MD (Cardiology)\nClinical and Interventional Cardiologist\nHead of Department (Cardiology)\nNational Institute of Neurosciences and Hospital'),
                            ),
                          ),
                        ),
                        Card(
                          // elevation: ,
                          shape: Border(bottom: BorderSide(color: Colors.blue)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Image.asset(
                                'assets/images/dr/dranyet.png',
                                height: 100,
                                width: 55,
                              ),
                              title: Text(
                                'DR. A.H.M ENAYETUR RASHUL',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                  'MBBS (DMC), MD (Cardiology)\nNational Institute of Cardiovascular Disease\nConsultant (Cardiology)'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                })));
  }
}
