import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: ListView(children: [
          Center(
            child: Container(
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16.0),
                  child: Column(children: [
                    Image.asset(
                      'assets/images/medical_logo.png',
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Center(
                      child: Row(
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                        'assets/images/stethoscope.png'),
                                    iconSize: 45,
                                  ),
                                  Text(
                                    "Find Doctor",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(height: 35),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/service');
                                    },
                                    icon: Image.asset(
                                        'assets/images/healthcare.png'),
                                    iconSize: 45,
                                  ),
                                  Text(
                                    "Our Services",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(height: 35),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                        'assets/images/package.png'),
                                    iconSize: 45,
                                  ),
                                  Text(
                                    "Health Package",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(height: 35),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                        'assets/images/blood-test.png'),
                                    iconSize: 45,
                                  ),
                                  Text(
                                    "Pathology Lab",
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      launch('tel:01313752222');
                                    },
                                    icon: Image.asset('assets/images/call.png'),
                                    iconSize: 45,
                                  ),
                                  Text(
                                    "Call for Appointment",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(height: 35),
                                  IconButton(
                                    onPressed: () {
                                      launch('tel:01313752222');
                                    },
                                    icon: Image.asset(
                                        'assets/images/ambulance.png'),
                                    iconSize: 45,
                                  ),
                                  Text(
                                    "Ambulance Service",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(height: 35),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/speciality');
                                    },
                                    icon: Image.asset(
                                        'assets/images/medical-report.png'),
                                    iconSize: 45,
                                  ),
                                  Text(
                                    "Our Specialities",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(height: 35),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                        'assets/images/ct-scan.png'),
                                    iconSize: 45,
                                  ),
                                  Text(
                                    "Radiology & Imaging",
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                        'assets/images/online_appointment.png'),
                                    iconSize: 45,
                                  ),
                                  Text(
                                    "Online Appointment",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(height: 35),
                                  IconButton(
                                    onPressed: () {
                                      launch('tel:01313752222');
                                    },
                                    icon: Image.asset(
                                        'assets/images/delivery.png'),
                                    iconSize: 45,
                                  ),
                                  Text(
                                    "Sample Collection",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(height: 35),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, "/features");
                                    },
                                    icon: Image.asset(
                                        'assets/images/vaccine.png'),
                                    iconSize: 45,
                                  ),
                                  Text(
                                    "Special Features",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(height: 35),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/map');
                                    },
                                    icon: Image.asset(
                                        'assets/images/placeholder.png'),
                                    iconSize: 45,
                                  ),
                                  Text(
                                    "Location",
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ])),
            ),
          )
        ]));
  }
}
