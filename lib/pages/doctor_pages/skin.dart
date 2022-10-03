import 'package:flutter/material.dart';

class Skin extends StatefulWidget {
  const Skin({super.key});

  @override
  State<Skin> createState() => _SkinState();
}

class _SkinState extends State<Skin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sex & Skin'),
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
                                      "assets/images/dr/dranjana.png",
                                      fit: BoxFit.cover,
                                      height: 200,
                                    ),
                                  )),
                              title: Text(
                                'LT. COL. DR. ANJANA CHAKRABORTY',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'MBBS (DMC), DDV (BSMMU)\nFCPS (Dermatology and Venereology)\nAssociate Professor\nCombined Military Hospital (CMH), Dhaka\nSpecialist in Botox, Filler, PRP, LASER & Dermatosurgery'),
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
                                      "assets/images/dr/drtoma.png",
                                      fit: BoxFit.cover,
                                      height: 200,
                                    ),
                                  )),
                              title: Text(
                                'DR. TANIMA TAMA',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'MBBS (DMC), DDV (BSMMU)\nSpecialist in Aesthetic Dermatology\nConsultant (Dermatology)'),
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
                      ],
                    ),
                  );
                })));
  }
}
