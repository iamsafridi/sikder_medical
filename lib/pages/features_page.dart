import 'package:flutter/material.dart';
import 'package:medical/services.dart';

class Features extends StatelessWidget {
  Features({super.key});

  final List _features = [
    'Modern treatment facilities',
    '100 bedded hospitals with modern ICU/CCU facilities',
    'Separate Dengue and Diarrhea ward',
    'Reliable & expert covid-19 treatment along with govt. approved RT-PCR lab',
    '24/7 oxygen generator plant facility',
    'Covid-19 test for both outbound passengers & locals',
    'Ventilation & high flow nasal cannula facilities',
    'Circumcision service at an affordable price',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Our Services'),
        ),
        body: Stack(
          children: [
            Container(
              child: Image.asset('assets/images/features.jpeg'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 155),
              child: Container(
                color: Color.fromARGB(50, 208, 226, 240),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: ListView.builder(
                      itemCount: _features.length,
                      itemBuilder: (context, index) {
                        return OurServices(
                          child: _features[index],
                        );
                      }),
                ),
              ),
            ),
          ],
        ));
  }
}



// import 'package:flutter/material.dart';

// class SpecialFeatures extends StatelessWidget {
//   const SpecialFeatures({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Special Features'),
//       ),
//       body: Stack(children: [
//         Container(
//           child: Image.asset('assets/images/features.jpeg'),
//         ),
//         Container(
//           // color: Color.fromARGB(150, 208, 226, 240),
//           child: Padding(
//             padding: const EdgeInsets.only(top: 155),
//             child: ListView(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 8.0),
//                   child: Stack(children: [
//                     Icon(
//                       Icons.check_circle,
//                       color: Colors.blue[900],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 25.0, top: 2),
//                       child: Container(
//                         child: Text('Modern treatment facilities',
//                             style: TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.bold)),
//                       ),
//                     ),
//                   ]),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 8.0),
//                   child: Stack(children: [
//                     Icon(
//                       Icons.check_circle,
//                       color: Colors.blue[900],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 25.0, top: 2),
//                       child: Container(
//                         child: Text(
//                             '100 bedded hospitals with modern ICU/CCU facilities',
//                             style: TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.bold)),
//                       ),
//                     ),
//                   ]),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 8.0),
//                   child: Stack(children: [
//                     Icon(
//                       Icons.check_circle,
//                       color: Colors.blue[900],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 25.0, top: 2),
//                       child: Container(
//                         child: Text('Separate Dengue and Diarrhea ward',
//                             style: TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.bold)),
//                       ),
//                     ),
//                   ]),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 8.0),
//                   child: Stack(children: [
//                     Icon(
//                       Icons.check_circle,
//                       color: Colors.blue[900],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 25.0, top: 2),
//                       child: Container(
//                         child: Text(
//                             'Reliable & expert covid-19 treatment along with govt. approved RT-PCR lab',
//                             style: TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.bold)),
//                       ),
//                     ),
//                   ]),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 8.0),
//                   child: Stack(children: [
//                     Icon(
//                       Icons.check_circle,
//                       color: Colors.blue[900],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 25.0, top: 2),
//                       child: Container(
//                         child: Text('24/7 oxygen generator plant facility',
//                             style: TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.bold)),
//                       ),
//                     ),
//                   ]),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 8.0),
//                   child: Stack(children: [
//                     Icon(
//                       Icons.check_circle,
//                       color: Colors.blue[900],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 25.0, top: 2),
//                       child: Container(
//                         child: Text(
//                             'Covid-19 test for both outbound passengers & locals',
//                             style: TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.bold)),
//                       ),
//                     ),
//                   ]),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 8.0),
//                   child: Stack(children: [
//                     Icon(
//                       Icons.check_circle,
//                       color: Colors.blue[900],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 25.0, top: 2),
//                       child: Container(
//                         child: Text(
//                             'Ventilation & high flow nasal cannula facilities',
//                             style: TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.bold)),
//                       ),
//                     ),
//                   ]),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 8.0),
//                   child: Stack(children: [
//                     Icon(
//                       Icons.check_circle,
//                       color: Colors.blue[900],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 25.0, top: 2),
//                       child: Container(
//                         child: Text(
//                             'Circumcision service at an affordable price',
//                             style: TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.bold)),
//                       ),
//                     ),
//                   ]),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ]),
//     );
//   }
// }
