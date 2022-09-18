import 'package:flutter/material.dart';
import 'package:medical/speciality.dart';

class Speciality extends StatelessWidget {
  final List _speciality = [
    'Medicine ',
    'Cardiology',
    'General Surgery',
    'Open Heart Surgery (By-Pass / CABG)',
    'Valve Replacement',
    'Congenital Defects',
    'Brain & Spine Surgery',
    'Neuro Medicin',
    'Pulmonology (Pneumonia, Asthma, COPD)',
    'Gynaecology',
    'Pediatrics',
    'Nephrology',
    'Urology',
    'Burn & Plastic Surgery',
    'Dermatology(Skin / Venereal Diseases /Aesthetics)',
    'Dental Unit',
    'Autistic & Communication Disabilities',
    'ENT',
    'Gastro liver',
    'Laparoscopy',
    'Microbiology',
    'Hematology',
    'Physiotherapy',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Our Specialities'),
        ),
        body: Stack(children: [
          Container(
            // color: Colors.blue[100],
            child: Image.asset('assets/images/speciality.jpeg'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 155),
            child: Container(
              color: Color.fromARGB(50, 208, 226, 240),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ListView.builder(
                    itemCount: _speciality.length,
                    itemBuilder: (context, index) {
                      return OurSpeciality(
                        child: _speciality[index],
                      );
                    }),
              ),
            ),
          ),
        ]));
  }
}
