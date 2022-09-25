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
                          child: Card(
                            // elevation: ,
                            shape:
                                Border(bottom: BorderSide(color: Colors.blue)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                leading: Image.asset(
                                  'assets/images/dr/drrasul.png',
                                  fit: BoxFit.cover,
                                  height: 100,
                                  width: 55,
                                ),
                                title: Text(
                                  'DR. GOLAM HAIDER RASUL',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                    'MBBS, FCPS (Surgery)\nSenior Consultant (Cardiac surgeon)'),
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
                              leading: Image.asset(
                                'assets/images/dr/drazom.png',
                                fit: BoxFit.cover,
                                height: 100,
                                width: 55,
                              ),
                              title: Text(
                                'DR. SAMIR AZAM SHANI',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                  'MBBS, MS(CCVS)\nFeloship on Beating Heart CABG(tamilnadu)\nSpecialist Cardiac Surgon(BSMMC)\nSenior Consultant (Cardiology & Vascular Surgon)'),
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
                                'assets/images/dr/drkaiyum.png',
                                fit: BoxFit.cover,
                                height: 100,
                                width: 55,
                              ),
                              title: Text(
                                'DR. MD. ISRAT KAIYUM',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                  'MBBS (DMC), BCS (health)\nClinical and Interventional Cardiologist\nHead of Department (Cardiology)\nNational Institute of Neurosciences and Hospital'),
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
                                'assets/images/dr/drreza.png',
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
                                'assets/images/dr/drtarek.png',
                                height: 100,
                                width: 55,
                              ),
                              title: Text(
                                'DR. MD. ZANZIBUL TAREQ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                  'MBBS, MS (CVTS), BCS (Health)\nCardiothoracic & Vascular Surgeon\nAssistant Registrar\nDept. of Cardiac Surgery, NICVD, Dhaka\nConsultant (Cardiac Surgeon)'),
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
                                'assets/images/dr/drnur.png',
                                height: 100,
                                width: 55,
                              ),
                              title: Text(
                                'DR. MD. NOOR-E-ELAHI MOZUMDER',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                  'MBBS (DMC), BCS (Health)\nMS (Cardio Vascular and Thoracic Surgery)\nNational Institute of Cardiovascular Diseases (NICVD)\nConsultant (Cardiac Surgeon)'),
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
                                'assets/images/dr/murshed.png',
                                height: 100,
                                width: 55,
                              ),
                              title: Text(
                                'DR. TAREQ MORSHED',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                  'MBBS, BCS (Health)\nMS (Cardio Vascular and Thoracic Surgery)\nSir Salimullah Medical College and Mitford Hospital\nConsultant (Cardiac Surgeon)'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                })));
  }
}
