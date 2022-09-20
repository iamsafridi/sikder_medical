import 'package:flutter/material.dart';

class HealthPackage extends StatefulWidget {
  const HealthPackage({super.key});

  @override
  State<HealthPackage> createState() => _HealthPackageState();
}

class _HealthPackageState extends State<HealthPackage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health Package'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20.0,
                                ),
                              ),
                            ),
                            contentPadding: EdgeInsets.only(
                              top: 10.0,
                            ),
                            title: Text(
                              "General Health Check-up Package-1",
                              style:
                                  TextStyle(fontSize: 20.0, color: Colors.red),
                            ),
                            content: Container(
                              height: 400,
                              width: 800,
                              child: SingleChildScrollView(
                                padding: const EdgeInsets.all(12.0),
                                child: Wrap(
                                  spacing: 12,
                                  // runSpacing: 20,
                                  direction: Axis.vertical,
                                  children: [
                                    Text(
                                      '1. CBC',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '2. RBS',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '3. Serum Creatinine',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '4. SGOT',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '5. HBsAg (ICT)',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '6. SGPT',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '7. Urine R/M/E',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '8. CXR (Chest X-Ray)',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ListTile(
                      title: Text('General Health Check-up Package-1'),
                      subtitle: Text('click for details'),
                      trailing: Text(
                        "৳ ${'2160'}",
                        textScaleFactor: 1.3,
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20.0,
                                ),
                              ),
                            ),
                            contentPadding: EdgeInsets.only(
                              top: 10.0,
                            ),
                            title: Text(
                              "General Health Check-up Package-2",
                              style:
                                  TextStyle(fontSize: 20.0, color: Colors.red),
                            ),
                            content: Container(
                              height: 400,
                              width: 800,
                              child: SingleChildScrollView(
                                padding: const EdgeInsets.all(12.0),
                                child: Wrap(
                                  spacing: 12,
                                  // runSpacing: 20,
                                  direction: Axis.vertical,
                                  children: [
                                    Text(
                                      '1. CBC',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '2. RBS',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '3. Serum Creatinine',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '4. HBsAg (ICT)',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '5. LFT (4 Test)',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '6. Fasting Lipid Profile',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '7. TSH',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '8. Urine R/M/E',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '9. CXR (Chest X-Ray)',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '10. ECG',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ListTile(
                      title: Text('General Health Check-up Package-2'),
                      subtitle: Text('click for details'),
                      trailing: Text(
                        "৳ ${'3900'}",
                        textScaleFactor: 1.3,
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20.0,
                                ),
                              ),
                            ),
                            contentPadding: EdgeInsets.only(
                              top: 10.0,
                            ),
                            title: Text(
                              "General Health Check-up Package-3",
                              style:
                                  TextStyle(fontSize: 20.0, color: Colors.red),
                            ),
                            content: Container(
                              height: 400,
                              width: 800,
                              child: SingleChildScrollView(
                                padding: const EdgeInsets.all(12.0),
                                child: Wrap(
                                  spacing: 12,
                                  // runSpacing: 20,
                                  direction: Axis.vertical,
                                  children: [
                                    Text(
                                      '1. CBC',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '2. FBS',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '3. 2HABF',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '4. LFT (4 Test)',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '5. Fasting Lipid Profile',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '6. Serum Creatinine',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '7. Uric Acid',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '8. HBsAg (ICT)',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '9. HCV (ICT)',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '10. TSH',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '11. Urine R/M/E',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '12. CXR (Chest X-Ray)',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '13. ECG',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '14. USG of W/A',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ListTile(
                      title: Text('General Health Check-up Package-3'),
                      subtitle: Text('click for details'),
                      trailing: Text(
                        "৳ ${'6600'}",
                        textScaleFactor: 1.3,
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20.0,
                                ),
                              ),
                            ),
                            contentPadding: EdgeInsets.only(
                              top: 10.0,
                            ),
                            title: Text(
                              "General Health Check-up Package-4",
                              style:
                                  TextStyle(fontSize: 20.0, color: Colors.red),
                            ),
                            content: Container(
                              height: 400,
                              width: 800,
                              child: SingleChildScrollView(
                                padding: const EdgeInsets.all(12.0),
                                child: Wrap(
                                  spacing: 12,
                                  // runSpacing: 20,
                                  direction: Axis.vertical,
                                  children: [
                                    Text(
                                      '1. CBC',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '2. OGTT(2 sample)',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '3. HbA1C',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '4. RFT',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '5. LFT (4 Test)',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '6. Lipid Profile',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '7. Serum Electrolyte',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '8. HBsAg (ICT)',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '9. TSH, FT3, FT4',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '10. Urine R/M/E',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '11. CXR (Chest X-Ray)',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '12. ECG',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ListTile(
                      title: Text('General Health Check-up Package-4'),
                      subtitle: Text('click for details'),
                      trailing: Text(
                        "৳ ${'7200'}",
                        textScaleFactor: 1.3,
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20.0,
                                ),
                              ),
                            ),
                            contentPadding: EdgeInsets.only(
                              top: 10.0,
                            ),
                            title: Text(
                              "Pregnancy Profile Package",
                              style:
                                  TextStyle(fontSize: 20.0, color: Colors.red),
                            ),
                            content: Container(
                              height: 400,
                              width: 800,
                              child: SingleChildScrollView(
                                padding: const EdgeInsets.all(12.0),
                                child: Wrap(
                                  spacing: 12,
                                  // runSpacing: 20,
                                  direction: Axis.vertical,
                                  children: [
                                    Text(
                                      '1. CBC',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '2. RBS',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '3. Serum Creatinine',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '4. VDRL',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '5. HBsAg (ICT)',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '6. Blood Grouping',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '7. Urine R/M/E',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '8. USG of Pregnancy Profile',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ListTile(
                      title: Text('Pregnancy Profile Package'),
                      subtitle: Text('click for details'),
                      trailing: Text(
                        "৳ ${'3000'}",
                        textScaleFactor: 1.3,
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20.0,
                                ),
                              ),
                            ),
                            contentPadding: EdgeInsets.only(
                              top: 10.0,
                            ),
                            title: Text(
                              "Thyroid Profile Package",
                              style:
                                  TextStyle(fontSize: 20.0, color: Colors.red),
                            ),
                            content: Container(
                              height: 400,
                              width: 800,
                              child: SingleChildScrollView(
                                padding: const EdgeInsets.all(12.0),
                                child: Wrap(
                                  spacing: 12,
                                  // runSpacing: 20,
                                  direction: Axis.vertical,
                                  children: [
                                    Text(
                                      '1. CBC',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '2. RBS',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '3. Serum Creatinine',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '4. TSH, FT3, FT4',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '5. CXR (Chest X-Ray)',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '6. ECG',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ListTile(
                      title: Text('Thyroid Profile Package'),
                      subtitle: Text('click for details'),
                      trailing: Text(
                        "৳ ${'3300'}",
                        textScaleFactor: 1.3,
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20.0,
                                ),
                              ),
                            ),
                            contentPadding: EdgeInsets.only(
                              top: 10.0,
                            ),
                            title: Text(
                              "Cardiac Profile Package",
                              style:
                                  TextStyle(fontSize: 20.0, color: Colors.red),
                            ),
                            content: Container(
                              height: 400,
                              width: 800,
                              child: SingleChildScrollView(
                                padding: const EdgeInsets.all(12.0),
                                child: Wrap(
                                  spacing: 12,
                                  // runSpacing: 20,
                                  direction: Axis.vertical,
                                  children: [
                                    Text(
                                      '1. CBC',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '2. Fasting Lipid Profile',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '3. FBS',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '4. 2 HABF',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '5. Serum Creatinine',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '6. SGPT',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '7. SGOT',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '8. Cardiogram Echo',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '9. HbA1C',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '10. CXR (Chest X-Ray)',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '11. ECG',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ListTile(
                      title: Text('Cardiac Profile Package'),
                      subtitle: Text('click for details'),
                      trailing: Text(
                        "৳ ${'4000'}",
                        textScaleFactor: 1.3,
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20.0,
                                ),
                              ),
                            ),
                            contentPadding: EdgeInsets.only(
                              top: 10.0,
                            ),
                            title: Text(
                              "Diabetic Profile Package",
                              style:
                                  TextStyle(fontSize: 20.0, color: Colors.red),
                            ),
                            content: Container(
                              height: 400,
                              width: 800,
                              child: SingleChildScrollView(
                                padding: const EdgeInsets.all(12.0),
                                child: Wrap(
                                  spacing: 12,
                                  // runSpacing: 20,
                                  direction: Axis.vertical,
                                  children: [
                                    Text(
                                      '1. CBC',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '2. FBS',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '3. 2 HABF',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '4. Fasting Lipid Profile',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '5. RFT',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '6. eGFR',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '7. Serum Electrolyte',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '8. ACR',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '9. Urine R/M/E',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '10. CXR (Chest X-Ray)',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '11. ECG',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ListTile(
                      title: Text('Diabetic Profile Package'),
                      subtitle: Text('click for details'),
                      trailing: Text(
                        "৳ ${'5640'}",
                        textScaleFactor: 1.3,
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
