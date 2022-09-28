import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sikder Hospital'),
      ),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/medical_logo.png',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView.count(
                crossAxisCount: 3,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/doctor");
                        },
                        icon: Image.asset('assets/images/stethoscope.png'),
                        iconSize: 45,
                      ),
                      Text(
                        "Find Doctor",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
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
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon:
                            Image.asset('assets/images/online_appointment.png'),
                        iconSize: 45,
                      ),
                      Text(
                        "Online Appointment",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/service');
                        },
                        icon: Image.asset('assets/images/healthcare.png'),
                        iconSize: 45,
                      ),
                      Text(
                        "Our Services",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          launch('tel:01313752222');
                        },
                        icon: Image.asset('assets/images/ambulance.png'),
                        iconSize: 45,
                      ),
                      Text(
                        "Call for Ambulance",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          launch('tel:01313752222');
                        },
                        icon: Image.asset('assets/images/delivery.png'),
                        iconSize: 45,
                      ),
                      Text(
                        "Sample Collection",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/package');
                        },
                        icon: Image.asset('assets/images/package.png'),
                        iconSize: 45,
                      ),
                      Text(
                        "health Package",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/speciality');
                        },
                        icon: Image.asset('assets/images/medical-report.png'),
                        iconSize: 45,
                      ),
                      Text(
                        "Our Specialities",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/features');
                        },
                        icon: Image.asset('assets/images/vaccine.png'),
                        iconSize: 45,
                      ),
                      Text(
                        "Special Features",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/pathlab');
                        },
                        icon: Image.asset('assets/images/blood-test.png'),
                        iconSize: 45,
                      ),
                      Text(
                        "Pathology Lab",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Center(
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/radiology');
                          },
                          icon: Image.asset('assets/images/ct-scan.png'),
                          iconSize: 45,
                        ),
                        Text(
                          "Radiology & Imaging",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/map');
                        },
                        icon: Image.asset('assets/images/placeholder.png'),
                        iconSize: 45,
                      ),
                      Text(
                        "Location",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
