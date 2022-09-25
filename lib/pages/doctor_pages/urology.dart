import 'package:flutter/material.dart';

class Urology extends StatelessWidget {
  const Urology({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Urology'),
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
                              leading: Image.asset(
                                'assets/images/dr/drmasud.png',
                                fit: BoxFit.fill,
                                height: 100,
                                width: 55,
                              ),
                              title: Text(
                                'DR. MD. MAHMUDUR-UR-RAHMAN(MASUD)',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                  'MBBS, BCS (Health)\nMS (Urology)\nConsultant (Urology)\nSir Salimullah Medical College and Mitford Hospital'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                })));
  }
}
