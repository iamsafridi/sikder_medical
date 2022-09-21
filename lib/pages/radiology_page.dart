import 'package:flutter/material.dart';

class Radiology extends StatelessWidget {
  const Radiology({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radiology & Imaging'),
      ),
      body: Stack(children: [
        Container(
          child: Image.asset('assets/images/radiology.jpg'),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 155),
          child: Container(
            color: Color.fromARGB(50, 208, 226, 240),
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 2),
                    child: Text(
                      'Radiology & Imaging',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18, top: 20),
                    child: Text(
                      'The Radiology & imaging Department at Zainul Haque Sikder Women\'s Medical College & Hospital is one of the best equipped radiology department in the country with a range of state-of-the-art equipment supporting a high quality service deliverd by specialized clinical team and support team.',
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
                          'MRI',
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
                          'CT-SCAN',
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
                          'X-RAY',
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
                          'USG',
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
