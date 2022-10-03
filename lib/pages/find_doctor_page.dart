import 'package:flutter/material.dart';

class FindDoctor extends StatefulWidget {
  const FindDoctor({super.key});

  @override
  State<FindDoctor> createState() => _FindDoctorState();
}

class _FindDoctorState extends State<FindDoctor> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Find Doctor'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/cardiology');
                      },
                      child: Card(
                        // elevation: ,
                        shape: Border(bottom: BorderSide(color: Colors.blue)),
                        child: ListTile(
                          title: Text(
                            'Cardilogy',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('View Available Doctors'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/cardiology_surgon');
                      },
                      child: Card(
                        // elevation: ,
                        shape: Border(bottom: BorderSide(color: Colors.blue)),
                        child: ListTile(
                          title: Text(
                            'Cardiothoracic & Vascular Surgery',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('View Available Doctors'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/general_surgery');
                      },
                      child: Card(
                        // elevation: ,
                        shape: Border(bottom: BorderSide(color: Colors.blue)),
                        child: ListTile(
                          title: Text(
                            'General & Laparoscopy Surgery',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('View Available Doctors'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/orthopedic');
                      },
                      child: Card(
                        // elevation: ,
                        shape: Border(bottom: BorderSide(color: Colors.blue)),
                        child: ListTile(
                          title: Text(
                            'Orthopedic',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('View Available Doctors'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/neurology');
                      },
                      child: Card(
                        // elevation: ,
                        shape: Border(bottom: BorderSide(color: Colors.blue)),
                        child: ListTile(
                          title: Text(
                            'Neurology',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('View Available Doctors'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/eurology');
                      },
                      child: Card(
                        // elevation: ,
                        shape: Border(bottom: BorderSide(color: Colors.blue)),
                        child: ListTile(
                          title: Text(
                            'Urology',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('View Available Doctors'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/medicine');
                      },
                      child: Card(
                        // elevation: ,
                        shape: Border(bottom: BorderSide(color: Colors.blue)),
                        child: ListTile(
                          title: Text(
                            'Medicine',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('View Available Doctors'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/hematology');
                      },
                      child: Card(
                        // elevation: ,
                        shape: Border(bottom: BorderSide(color: Colors.blue)),
                        child: ListTile(
                          title: Text(
                            'Heamatology',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('View Available Doctors'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/gynecology');
                      },
                      child: Card(
                        // elevation: ,
                        shape: Border(bottom: BorderSide(color: Colors.blue)),
                        child: ListTile(
                          title: Text(
                            'Gynecology',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('View Available Doctors'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/burn');
                      },
                      child: Card(
                        // elevation: ,
                        shape: Border(bottom: BorderSide(color: Colors.blue)),
                        child: ListTile(
                          title: Text(
                            'Burn and Plastic Surgery',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('View Available Doctors'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/skin');
                      },
                      child: Card(
                        // elevation: ,
                        shape: Border(bottom: BorderSide(color: Colors.blue)),
                        child: ListTile(
                          title: Text(
                            'Skin and Sex',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('View Available Doctors'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/nephrology');
                      },
                      child: Card(
                        // elevation: ,
                        shape: Border(bottom: BorderSide(color: Colors.blue)),
                        child: ListTile(
                          title: Text(
                            'Nephrology',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('View Available Doctors'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/pediatric');
                      },
                      child: Card(
                        // elevation: ,
                        shape: Border(bottom: BorderSide(color: Colors.blue)),
                        child: ListTile(
                          title: Text(
                            'Dentist',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('View Available Doctors'),
                        ),
                      ),
                    ),
                    Card(
                      // elevation: ,
                      shape: Border(bottom: BorderSide(color: Colors.blue)),
                      child: ListTile(
                        title: Text(
                          'Anesthesia',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('View Available Doctors'),
                      ),
                    ),
                    Card(
                      // elevation: ,
                      shape: Border(bottom: BorderSide(color: Colors.blue)),
                      child: ListTile(
                        title: Text(
                          'Dietetics & Nutrition',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('View Available Doctors'),
                      ),
                    ),
                  ],
                );
              }),
        ));
  }
}
