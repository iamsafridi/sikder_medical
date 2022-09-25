import 'package:flutter/material.dart';

class GeneralSurgery extends StatefulWidget {
  const GeneralSurgery({super.key});

  @override
  State<GeneralSurgery> createState() => _GeneralSurgeryState();
}

class _GeneralSurgeryState extends State<GeneralSurgery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('General Surgery'),
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
                                'assets/images/dr/drnasir.png',
                                fit: BoxFit.cover,
                                height: 100,
                                width: 55,
                              ),
                              title: Text(
                                'PROF. DR. MOHAMMAD JAMAL ABU NASSER',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                  'MBBS, FCPS (Surgery), FMAS (India)\nTrained in Laser Proctology (India)\nTGeneral, Laparoscopic, Breast, Hernia,\nAno-Rectal & Laser Proctology Surgeon\nSenior Consultant'),
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
                                'assets/images/dr/drniaz.png',
                                fit: BoxFit.fill,
                                height: 100,
                                width: 55,
                              ),
                              title: Text(
                                'DR. NIAZUR RAHMAN',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                  'MBBS, BCS, FCPS (Surgery), MS (Urology), BSMMU\nSpecialist Surgeon & Urologist\nShaheed Suhrawardy Medical College Hospital\nConsultant (Surgery & Urology)'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                })));
  }
}
