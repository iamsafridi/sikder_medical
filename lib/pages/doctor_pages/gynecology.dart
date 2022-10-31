import 'package:flutter/material.dart';

class Gynecology extends StatefulWidget {
  const Gynecology({super.key});

  @override
  State<Gynecology> createState() => _GynecologyState();
}

class _GynecologyState extends State<Gynecology> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Gynecology'),
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
                                        "assets/images/dr/drmitu.png",
                                        fit: BoxFit.cover,
                                        // width: 100,
                                      ),
                                    )),
                                title: Text(
                                  'DR. KAMRUN NAHAR (MITU)',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'MBBS, FCPS (Obs & Gyne)\nFormer Associate Professor (Obs & Gyne)\nShahabuddin Medical College Hospital\nSenior Consultant\nObstetrician and Gynecologist'),
                                    Container(
                                      width: 260,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushNamed(context, "/mitu");
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
                                        "assets/images/dr/drsabina.png",
                                        fit: BoxFit.cover,
                                        // width: 90,
                                      ),
                                    )),
                                title: Text(
                                  'DR. SABINA PERVIN',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'MBBS, FCPS, MACS\nSenior Consultant\nObstetrician and Gynecologist'),
                                    Container(
                                      width: 260,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, "/sabina");
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
                                        "assets/images/dr/driffat.png",
                                        fit: BoxFit.cover,
                                        // width: 90,
                                      ),
                                    )),
                                title: Text(
                                  'DR. IFFAT RAHMAN',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'MBBS, FCPS (Obs & Gyne)\nBCS (Health), BSMMU\nConsultant\nGynecology & Obstetrics Specialist'),
                                    Container(
                                      width: 260,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, "/iffat");
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
                                        "assets/images/dr/drsarmin.png",
                                        fit: BoxFit.cover,
                                        // width: 50,
                                      ),
                                    )),
                                title: Text(
                                  'DR. SHARMIN SULTANA',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'MBBS, BCS (Health)\nFCPS (Obs & Gynae\nSheikh Hasina National Institute\nof Burn and Plastic Surgery\nConsultant (Obs & Gynae)'),
                                    Container(
                                      width: 260,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, "/sultana");
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
                        ),
                        // Container(
                        //   // height: 180,
                        //   child: Card(
                        //     // elevation: ,
                        //     shape:
                        //         Border(bottom: BorderSide(color: Colors.blue)),
                        //     child: Padding(
                        //       padding: const EdgeInsets.all(8.0),
                        //       child: ListTile(
                        //         leading: CircleAvatar(
                        //             radius: (30),
                        //             backgroundColor: Colors.white,
                        //             child: ClipRRect(
                        //               borderRadius: BorderRadius.circular(50),
                        //               child: Image.asset(
                        //                 "assets/images/dr/drnur.png",
                        //                 fit: BoxFit.cover,
                        //                 // width: 90,
                        //               ),
                        //             )),
                        //         title: Text(
                        //           'DR. MD. NOOR-E-ELAHI MOZUMDER',
                        //           style: TextStyle(fontWeight: FontWeight.bold),
                        //         ),
                        //         subtitle: Column(
                        //           crossAxisAlignment: CrossAxisAlignment.start,
                        //           children: [
                        //             Text(
                        //                 'MBBS (DMC), BCS (Health)\nMS(Cardio Vascular of Thoracic Surgery)\nNational Institute of Cardiovascular Diseases (NICVD)\nConsultant (Cardiac Surgeon)'),
                        //             Container(
                        //               width: 260,
                        //               child: ElevatedButton(
                        //                 onPressed: () {},
                        //                 child: Text(
                        //                   'Appointment',
                        //                   textAlign: TextAlign.end,
                        //                 ),
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  );
                })));
  }
}
