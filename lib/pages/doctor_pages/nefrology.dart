import 'package:flutter/material.dart';

class Nephrology extends StatefulWidget {
  const Nephrology({super.key});

  @override
  State<Nephrology> createState() => _NephrologyState();
}

class _NephrologyState extends State<Nephrology> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Nephrology'),
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
                                    //   "assets/images/dr/dryash.png",
                                    //   fit: BoxFit.cover,
                                    //   height: 200,
                                    // ),
                                  )),
                              title: Text(
                                'DR. MD. AMINUL ISLAM',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'MBBS, MD(Nephrology) BCS (Health)\nKidney Specialist\nDhaka Medical College Hospital\nConsultant (Nephrology)'),
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
