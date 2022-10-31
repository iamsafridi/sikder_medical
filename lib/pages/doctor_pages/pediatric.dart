import 'package:flutter/material.dart';

class pediatric extends StatefulWidget {
  const pediatric({super.key});

  @override
  State<pediatric> createState() => _pediatricState();
}

class _pediatricState extends State<pediatric> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pediatric'),
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
                                      "assets/images/dr/dremam.png",
                                      fit: BoxFit.cover,
                                      height: 200,
                                    ),
                                  )),
                              title: Text(
                                'DR. A.K.M. IMAM UDDIN',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'MBBS, DCH, RCPS (Ireland)\nSenior Consultant (Pediatrician)\nPublic Health Nutrition (DU)\nSpecialist in Newborn and Child Health\nFormer Resident Physician, Ministry of Health, Saudi Arabia\nConsultant (Child Specialist)'),
                                  Container(
                                    width: 260,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, "/emam");
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
                                'DR. MAHFUZA AKTER URME',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'MBBS (DMC), BCS (Health)\nChild Specialist(DCH) Gyne & OBS(PGT)\nBSSMU\nConsultant (Mother & Child Specialist)'),
                                  Container(
                                    width: 260,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, "/urme");
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
