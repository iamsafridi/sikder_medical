import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Anesthesia extends StatelessWidget {
  const Anesthesia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Anesthesia'),
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
                                    // child: Image.asset(
                                    //   "assets/images/dr/dremam.png",
                                    //   fit: BoxFit.cover,
                                    //   height: 200,
                                    // ),
                                  )),
                              title: Text(
                                'DR. S.M.A BABAR TALUKDER ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'MBBS, FCPS, DA, CCD\nSenior Consultant\nCardiac Head Anesthesia & ICU\nChief of Cardiac Anesthesia & Intensive Care'),
                                  Container(
                                    width: 260,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        launch('tel:01313752222');
                                      },
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
                                    // child: Image.asset(
                                    //   "assets/images/dr/drtoma.png",
                                    //   fit: BoxFit.cover,
                                    //   height: 200,
                                    // ),
                                  )),
                              title: Text(
                                'DR. ASHFAK IBN MIJAN',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'MBBS, Diploma in Anesthesiology\nResident Consultant (Anesthesia & ICU'),
                                  Container(
                                    width: 260,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        launch('tel:01313752222');
                                      },
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
                                    // child: Image.asset(
                                    //   "assets/images/dr/drtoma.png",
                                    //   fit: BoxFit.cover,
                                    //   height: 200,
                                    // ),
                                  )),
                              title: Text(
                                'DR. MD. MOSADDEK AKBER',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'MBBS, Diploma in Anesthesiology\nResident Consultant (Anesthesia & ICU'),
                                  Container(
                                    width: 260,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        launch('tel:01313752222');
                                      },
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
