import 'package:flutter/material.dart';
import 'package:medical/pages/doctor_pages/burn.dart';
import 'package:medical/pages/doctor_pages/cardiology.dart';
import 'package:medical/pages/doctor_pages/cardiology_surgon.dart';
import 'package:medical/pages/doctor_pages/gynecology.dart';
import 'package:medical/pages/doctor_pages/hematology.dart';
import 'package:medical/pages/doctor_pages/medicine.dart';
import 'package:medical/pages/doctor_pages/skin.dart';
import 'package:medical/pages/doctor_pages/urology.dart';
import 'package:medical/pages/doctor_pages/general_surgery.dart';
import 'package:medical/pages/doctor_pages/neurology.dart';
import 'package:medical/pages/doctor_pages/orthopedic.dart';
import 'package:medical/pages/find_doctor_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/services.dart';
import 'package:medical/pages/features_page.dart';
import 'package:medical/pages/home_page.dart';
import 'package:medical/pages/location_page.dart';
// import 'package:medical/pages/onlineAppointment_page.dart';
import 'package:medical/pages/packages_page.dart';
import 'package:medical/pages/pathoLab_page.dart';
import 'package:medical/pages/radiology_page.dart';
import 'package:medical/pages/servies_page.dart';
import 'package:medical/pages/speciality_page.dart';
import 'package:medical/pages/starter_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: ThemeData(
          colorScheme: ColorScheme.light()
              .copyWith(primary: Color.fromARGB(255, 06, 19, 120)),
          // primaryColor: Color.fromARGB(255, 06, 19, 120)
        ),
        darkTheme: ThemeData(brightness: Brightness.light),
        initialRoute: "/main",
        routes: {
          // "/": (context) => StarterPage(),
          "/home": (context) => HomePage(),
          "/main": (context) => StarterPage(),
          "/map": (context) => MapScreen(),
          "/service": (context) => Services(),
          "/speciality": (context) => Speciality(),
          "/features": (context) => Features(),
          "/pathlab": (context) => PathoLab(),
          "/radiology": (context) => Radiology(),
          "/package": (context) => HealthPackage(),
          "/doctor": (context) => FindDoctor(),
          "/cardiology": (context) => Cardiology(),
          "/cardiology_surgon": (context) => CardiologySurgon(),
          "/general_surgery": (context) => GeneralSurgery(),
          "/orthopedic": (context) => Orthopedic(),
          "/neurology": (context) => Neurology(),
          "/eurology": (context) => Urology(),
          "/medicine": (context) => Medicine(),
          "/hematology": (context) => Hematology(),
          "/gynecology": (context) => Gynecology(),
          "/burn": (context) => Burn(),
          "/skin": (context) => Skin(),
        },
      );
    });
  }
}
