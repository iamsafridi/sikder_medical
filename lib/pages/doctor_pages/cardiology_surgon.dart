import 'package:flutter/material.dart';

class CardiologySurgon extends StatefulWidget {
  const CardiologySurgon({super.key});

  @override
  State<CardiologySurgon> createState() => _CardiologySurgonState();
}

class _CardiologySurgonState extends State<CardiologySurgon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cardiothoracic & Vascular Surgery'),
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
                                        "assets/images/dr/drrasul.png",
                                        fit: BoxFit.cover,
                                        width: 100,
                                      ),
                                    )),
                                title: Text(
                                  'DR. GOLAM HAIDER RASUL',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'MBBS, FCPS (Surgery)\nFRCS (Glagow)\nSenior Consultant (Cardiac surgeon)'),
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
                                        "assets/images/dr/drazom.png",
                                        fit: BoxFit.cover,
                                        // width: 90,
                                      ),
                                    )),
                                title: Text(
                                  'DR. SAMIR AZAM SHANI',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'MBBS, MS(CCVS)\nFeloship on Beating Heart CABG(tamilnadu)\nSpecialist Cardiac Surgon(BSMMC)\nSenior Consultant (Cardiology & Vascular Surgon)'),
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
                        // Card(
                        //   // elevation: ,
                        //   shape: Border(bottom: BorderSide(color: Colors.blue)),
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(8.0),
                        //     child: ListTile(
                        //       leading: Image.asset(
                        //         'assets/images/dr/drkaiyum.png',
                        //         fit: BoxFit.cover,
                        //         height: 100,
                        //         width: 55,
                        //       ),
                        //       title: Text(
                        //         'DR. MD. ISRAT KAIYUM',
                        //         style: TextStyle(fontWeight: FontWeight.bold),
                        //       ),
                        //       subtitle: Text(
                        //           'MBBS, BCS (health)\nMRCPS(Surgery),Edinburgh, UK\nMS(Cardio Vascular & Therapy Surgery) BSSMU\nSpecialist Cardio Vascular & General Surgery, NIECVD'),
                        //     ),
                        //   ),
                        // ),
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
                                        "assets/images/dr/drreza.png",
                                        fit: BoxFit.cover,
                                        // width: 90,
                                      ),
                                    )),
                                title: Text(
                                  'DR. MD. REZAUL KARIM',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'MBBS (DMC), BCS (Health)\nMS(Cardio Vascular & Therpay Surgery),\nFCPS(America)'),
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
                                        "assets/images/dr/drtarek.png",
                                        fit: BoxFit.cover,
                                        // width: 50,
                                      ),
                                    )),
                                title: Text(
                                  'DR. MD. ZANZIBUL TAREQ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'MBBS, MS (CVTS), BCS (Health)\nCardiothoracic & Vascular Surgeon\nAssistant Registrar\nDept. of Cardiac Surgery, NICVD, Dhaka\nConsultant (Cardiac Surgeon)'),
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
                                        "assets/images/dr/drnur.png",
                                        fit: BoxFit.cover,
                                        // width: 90,
                                      ),
                                    )),
                                title: Text(
                                  'DR. MD. NOOR-E-ELAHI MOZUMDER',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'MBBS (DMC), BCS (Health)\nMS(Cardio Vascular of Thoracic Surgery)\nNational Institute of Cardiovascular Diseases (NICVD)\nConsultant (Cardiac Surgeon)'),
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
                                        "assets/images/dr/murshed.png",
                                        fit: BoxFit.cover,
                                        // width: 90,
                                      ),
                                    )),
                                title: Text(
                                  'DR. TAREQ MORSHED',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'MBBS, BCS (Health)\nMS(Cardio Vascular & Thoracic Surgery)\nSir Salimullah Medical College and Mitford Hospital\nConsultant (Cardiac Surgeon)'),
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
