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
                              leading: CircleAvatar(
                                  radius: (30),
                                  backgroundColor: Colors.white,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      "assets/images/dr/drnasir.png",
                                      fit: BoxFit.cover,
                                      height: 200,
                                    ),
                                  )),
                              title: Text(
                                'PROF. DR. MOHAMMAD JAMAL ABU NASSER',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'MBBS, FCPS (Surgery), FMAS (India)\nTrained in Laser Proctology (India)\nTGeneral, Laparoscopic, Breast, Hernia,\nAno-Rectal & Laser Proctology Surgeon\nSenior Consultant'),
                                  Container(
                                    width: 260,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, "/naser");
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
                                    child: Image.asset(
                                      "assets/images/dr/drniaz.png",
                                      fit: BoxFit.fill,
                                      // width: 90,
                                    ),
                                  )),
                              title: Text(
                                'DR. NIAZUR RAHMAN',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'MBBS, BCS, FCPS (Surgery), MS (Urology), BSMMU\nSpecialist Surgeon & Urologist\nShaheed Suhrawardy Medical College Hospital\nConsultant (Surgery & Urology)'),
                                  Container(
                                    width: 260,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, "/niyaz");
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
