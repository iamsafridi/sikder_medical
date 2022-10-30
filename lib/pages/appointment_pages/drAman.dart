import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:medical/pages/appointment_pages/drMahboob.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:http/http.dart' as http;

enum TimeEnum { nine, ten, eleven, twelve, one, two, three, four, five }

class DrAman extends StatefulWidget {
  const DrAman({super.key});

  @override
  State<DrAman> createState() => _DrAmanState();
}

class _DrAmanState extends State<DrAman> {
  _DrAmanState() {
    _seletedTime = _time[0];
    _seletedGender = _gender[0];
    _seletedBlood = _blood[0];
  }

  TextEditingController _date = TextEditingController();
  TextEditingController _name = TextEditingController();
  TextEditingController _number = TextEditingController();
  TextEditingController _drname =
      TextEditingController(text: 'DR.AMANULLAH BIN SIDDIQ');

  final _time = [
    "",
    "3:00 PM",
    "3:30 PM",
    "4:00 PM",
    "4:30 PM",
    "5:00 PM",
    "5:30 PM",
    "6:00 PM"
  ];
  final _gender = ["", "Male", "Female", "Other"];
  final _blood = ["", "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"];
  String? _seletedTime = "";
  String? _seletedGender = "";
  String? _seletedBlood = "";

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Appointment'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Form(
                    key: _formKey,
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            // height: 180,
                            child: Card(
                              // elevation: ,
                              shape: Border(
                                  bottom: BorderSide(color: Colors.blue)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  leading: CircleAvatar(
                                      radius: (30),
                                      backgroundColor: Colors.white,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.asset(
                                          "assets/images/dr/draman.png",
                                          fit: BoxFit.cover,
                                          // width: 90,
                                        ),
                                      )),
                                  title: TextFormField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    enabled: false,
                                    controller: _drname,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          'MBBS (DMC), MD (Cardiology)\nClinical and Interventional Cardiologist\nHead of Department (Cardiology)\nNational Institute of Neurosciences & Hospital'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 400,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListView(
                                  children: [
                                    Container(
                                        width: 300,
                                        child: TextFormField(
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          controller: _date,
                                          decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              contentPadding: EdgeInsets.all(4),
                                              prefixIcon: Icon(
                                                  Icons.calendar_today_rounded),
                                              labelText:
                                                  'Select Date (Sat, Mon, Wed)'),
                                          onTap: () async {
                                            DateTime? pickdate =
                                                await showDatePicker(
                                                    context: context,
                                                    initialDate: DateTime.now(),
                                                    firstDate: DateTime(2000),
                                                    lastDate: DateTime(2100));

                                            if (pickdate != null) {
                                              setState(() {
                                                _date.text =
                                                    DateFormat('yyyy-MM-dd')
                                                        .format(pickdate);
                                              });
                                            }
                                          },
                                          validator: MultiValidator([
                                            RequiredValidator(
                                                errorText: "Required*")
                                          ]),
                                        )),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                        width: 150,
                                        child: DropdownButtonFormField(
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          value: _seletedTime,
                                          items: _time
                                              .map((e) => DropdownMenuItem(
                                                    child: Text(e),
                                                    value: e,
                                                  ))
                                              .toList(),
                                          onChanged: (val) {
                                            setState(() {
                                              _seletedTime = val as String;
                                            });
                                          },
                                          icon: const Icon(
                                            Icons.arrow_drop_down_circle,
                                            color: Colors.blue,
                                          ),
                                          dropdownColor: Colors.blue[50],
                                          decoration: InputDecoration(
                                              contentPadding: EdgeInsets.all(4),
                                              labelText: "Select Time",
                                              border: OutlineInputBorder(),
                                              prefixIcon: Icon(
                                                  Icons.more_time_outlined)),
                                          validator: MultiValidator([
                                            RequiredValidator(
                                                errorText: "Required*")
                                          ]),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 230,
                            width: 400,
                            child: Card(
                              child: ListView(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 300,
                                          child: TextFormField(
                                            controller: _name,
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            decoration: const InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.all(4),
                                                border: OutlineInputBorder(),
                                                prefixIcon: Icon(Icons.people),
                                                labelText: 'Patient Name'),
                                            validator: MultiValidator([
                                              RequiredValidator(
                                                  errorText: "Required*")
                                            ]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 300,
                                          child: TextFormField(
                                            controller: _number,
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            keyboardType: TextInputType.phone,
                                            decoration: const InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.all(4),
                                                border: OutlineInputBorder(),
                                                prefixIcon: Icon(Icons.phone),
                                                labelText: 'Phone Number'),
                                            validator: MultiValidator([
                                              RequiredValidator(
                                                  errorText: "Required*")
                                            ]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            width: 150,
                                            child: DropdownButtonFormField(
                                              autovalidateMode: AutovalidateMode
                                                  .onUserInteraction,
                                              value: _seletedGender,
                                              items: _gender
                                                  .map((e) => DropdownMenuItem(
                                                        child: Text(e),
                                                        value: e,
                                                      ))
                                                  .toList(),
                                              onChanged: (val) {
                                                setState(() {
                                                  _seletedGender =
                                                      val as String;
                                                });
                                              },
                                              icon: const Icon(
                                                Icons.arrow_drop_down_circle,
                                                color: Colors.blue,
                                              ),
                                              dropdownColor: Colors.blue[50],
                                              decoration: InputDecoration(
                                                  labelText: "Select Gender",
                                                  contentPadding:
                                                      EdgeInsets.all(4),
                                                  border: OutlineInputBorder(),
                                                  prefixIcon:
                                                      Icon(Icons.person)),
                                              validator: MultiValidator([
                                                RequiredValidator(
                                                    errorText: "Required*")
                                              ]),
                                            )),
                                        Container(
                                            width: 150,
                                            child: DropdownButtonFormField(
                                              autovalidateMode: AutovalidateMode
                                                  .onUserInteraction,
                                              value: _seletedBlood,
                                              items: _blood
                                                  .map((e) => DropdownMenuItem(
                                                        child: Text(e),
                                                        value: e,
                                                      ))
                                                  .toList(),
                                              onChanged: (val) {
                                                setState(() {
                                                  _seletedBlood = val as String;
                                                });
                                              },
                                              icon: const Icon(
                                                Icons.arrow_drop_down_circle,
                                                color: Colors.blue,
                                              ),
                                              dropdownColor: Colors.blue[50],
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.all(4),
                                                  labelText: "Blood Group",
                                                  border: OutlineInputBorder(),
                                                  prefixIcon: Icon(
                                                      Icons.bloodtype_rounded)),
                                              validator: MultiValidator([
                                                RequiredValidator(
                                                    errorText: "Required*")
                                              ]),
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                minimumSize: const Size(400, 50),
                                backgroundColor: Colors.blue[50]),
                            onPressed: () {
                              // _formKey.currentState?.validate();
                              if (_formKey.currentState!.validate()) {
                                Appointment();
                                showAlertDialog(context);
                                // Navigator.pushNamed(context, '/home');
                                print('Successful');
                              } else {
                                print('Unsuccessful');
                              }
                            },
                            child: Text('Confirm'.toUpperCase(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue)),
                          )
                        ],
                      ),
                    ),
                  );
                })));
  }

  Future Appointment() async {
    var APIURL = 'http://202.84.39.89:8888/appointment/appointment.php';

    Map mapeddata = {
      "drname": _drname.text,
      "date": _date.text,
      "time": _seletedTime,
      "name": _name.text,
      "number": _number.text,
      "gender": _seletedGender,
      "blood": _seletedBlood,
    };
    // print("JSON DATA: ${id}");

    http.Response response =
        await http.post(Uri.parse(APIURL), body: mapeddata);

    // var data = jsonDecode(response.body);
    // print("DATA: ${data}");
  }

  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = OutlinedButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pushNamed(context, '/home');
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Confirmation"),
      content: Text("Appointment Successfull "),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}