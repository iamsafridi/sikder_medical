import 'package:flutter/material.dart';
import 'package:medical/services.dart';

class Services extends StatelessWidget {
  Services({super.key});

  final List _services = [
    'ICU & CCU',
    'Cardiology',
    'Stroke & Neuro Care Unit',
    'Emergency Services 24/7',
    'Portable & Digital X-Ray 24/7',
    'MRI/CT Scan 24/7',
    'LAB Services 24/7 ',
    'Nutrition & Dietary Services',
    'Ultrasonogram',
    'Pharmacy Services 24/7',
    'Central Oxygen Supply 24/7',
    'Kidney Dialysis Unit 24/7(General & HBsAg+)',
    'COVID-19 Patient Treatment',
    'High Flow Oxygen Unit Facility'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Our Services'),
        ),
        body: ListView.builder(
            itemCount: _services.length,
            itemBuilder: (context, index) {
              return OurServices(
                child: _services[index],
              );
            }));
  }
}
