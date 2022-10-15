import 'package:flutter/material.dart';

class PathoLab extends StatelessWidget {
  const PathoLab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pathology Lab'),
      ),
      body: Stack(children: [
        Container(
          child: Image.asset('assets/images/pathLab.jpg'),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 130),
          child: Container(
            color: Color.fromARGB(50, 208, 226, 240),
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 2),
                    child: Text(
                      'Pathology Lab',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18, top: 20),
                    child: Text(
                      'Pathology is a branch of medical science primarily concerning the cause, origin, and nature of disease. It involves the examination of tissues, organs, bodily fluids, and autopsies in order to study and diagnose disease.',
                      style: TextStyle(fontSize: 15, height: 2),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18, top: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.blue[900],
                        ),
                        Text(
                          'Biochemical',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18, top: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.blue[900],
                        ),
                        Text(
                          'Clinical Pathology',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18, top: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.blue[900],
                        ),
                        Text(
                          'Hematology',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18, top: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.blue[900],
                        ),
                        Text(
                          'Immunology',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18, top: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.blue[900],
                        ),
                        Text(
                          'Microbiology',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18, top: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.blue[900],
                        ),
                        Text(
                          'Serology',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 18, top: 20, bottom: 15),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.blue[900],
                        ),
                        Text(
                          'Transfusion Medicine',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
