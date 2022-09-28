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
                        Container(
                          // height: 180,
                          child: Card(
                            // elevation: ,
                            shape:
                                Border(bottom: BorderSide(color: Colors.blue)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                leading: CircleAvatar(
                                    radius: (30),
                                    backgroundColor: Colors.white,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        "assets/images/dr/drmahboob.png",
                                        fit: BoxFit.cover,
                                        // width: 90,
                                      ),
                                    )),
                                title: Text(
                                  'PROFESSOR DR.MAHBOOB ALI',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'MBBS, MD\nFCPS, FSCAI\nTrends in Interventional Cardiology\nSenior Consultant (Cardiology Specialist)'),
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
                        ),
                        Container(
                          // height: 180,
                          child: Card(
                            // elevation: ,
                            shape:
                                Border(bottom: BorderSide(color: Colors.blue)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                leading: CircleAvatar(
                                    radius: (30),
                                    backgroundColor: Colors.white,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        "assets/images/dr/draman.png",
                                        fit: BoxFit.cover,
                                        // width: 90,
                                      ),
                                    )),
                                title: Text(
                                  'DR.AMANULLAH BIN SIDDIQ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'MBBS (DMC), MD (Cardiology)\nClinical and Interventional Cardiologist\nHead of Department (Cardiology)\nNational Institute of Neurosciences & Hospital'),
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
                        ),
                        Container(
                          // height: 180,
                          child: Card(
                            // elevation: ,
                            shape:
                                Border(bottom: BorderSide(color: Colors.blue)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                leading: CircleAvatar(
                                    radius: (30),
                                    backgroundColor: Colors.white,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        "assets/images/dr/dranyet.png",
                                        fit: BoxFit.cover,
                                        // width: 90,
                                      ),
                                    )),
                                title: Text(
                                  'DR. A.H.M ENAYETUR RASHUL',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'MBBS (DMC), MD (Cardiology)\nNational Institute of Cardiovascular Disease\nConsultant (Cardiology)'),
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
                        ),
                      ],
                    ),
                  );
                })));
  }
}
