import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:medical/pages/appointment_pages/drMahboob.dart';

enum TimeEnum { nine, ten, eleven, twelve, one, two, three, four, five }

class DrMahboob extends StatefulWidget {
  const DrMahboob({super.key});

  @override
  State<DrMahboob> createState() => _DrMahboobState();
}

class _DrMahboobState extends State<DrMahboob> {
  _DrMahboobState() {
    _seletedGender = _gender[0];
    _seletedBlood = _blood[0];
  }

  TextEditingController _date = TextEditingController();
  TimeEnum? _timeEnum;
  final _gender = ["Select", "Male", "Female", "Other"];
  final _blood = ["Select", "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"];
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
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          // height: 180,
                          child: Card(
                            // elevation: ,
                            shape:
                                Border(bottom: BorderSide(color: Colors.blue)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                leading: CircleAvatar(
                                    radius: (30),
                                    backgroundColor: Colors.white,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        "assets/images/dr/drmahboob.png",
                                        fit: BoxFit.cover,
                                        // width: 90,
                                      ),
                                    )),
                                title: Text(
                                  'PROFESSOR DR.MAHBOOB ALI',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'MBBS, MD\nFCPS, FSCAI\nTrends in Interventional Cardiology\nSenior Consultant (Cardiology Specialist)'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                Container(
                                  height: 180,
                                  width: 400,
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ListView(
                                        children: [
                                          Container(
                                              width: 300,
                                              child: TextFormField(
                                                controller: _date,
                                                decoration: const InputDecoration(
                                                    border:
                                                        OutlineInputBorder(),
                                                    contentPadding:
                                                        EdgeInsets.all(4),
                                                    prefixIcon: Icon(Icons
                                                        .calendar_today_rounded),
                                                    labelText:
                                                        'Select Date (Sun, Mon, Thu)'),
                                                onTap: () async {
                                                  DateTime? pickdate =
                                                      await showDatePicker(
                                                          context: context,
                                                          initialDate:
                                                              DateTime.now(),
                                                          firstDate:
                                                              DateTime(2000),
                                                          lastDate:
                                                              DateTime(2100));

                                                  if (pickdate != null) {
                                                    setState(() {
                                                      _date.text = DateFormat(
                                                              'yyyy-MM-dd')
                                                          .format(pickdate);
                                                    });
                                                  }
                                                },
                                              )),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 110,
                                                    child: Flexible(
                                                      fit: FlexFit.loose,
                                                      child: ListTileTheme(
                                                        horizontalTitleGap: 0,
                                                        child: Transform.scale(
                                                          scale: .8,
                                                          child: RadioListTile<
                                                                  TimeEnum>(
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .all(0.0),
                                                              dense: true,
                                                              tileColor: Colors
                                                                  .blue[50],
                                                              value:
                                                                  TimeEnum.nine,
                                                              groupValue:
                                                                  _timeEnum,
                                                              title: Text(
                                                                  '9.00 A.M'),
                                                              onChanged: (val) {
                                                                setState(() {
                                                                  _timeEnum =
                                                                      val;
                                                                });
                                                              }),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 110,
                                                    child: Flexible(
                                                      fit: FlexFit.loose,
                                                      child: ListTileTheme(
                                                        horizontalTitleGap: 0,
                                                        child: Transform.scale(
                                                          scale: .8,
                                                          child: RadioListTile<
                                                                  TimeEnum>(
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .all(0.0),
                                                              dense: true,
                                                              tileColor: Colors
                                                                  .blue[50],
                                                              value:
                                                                  TimeEnum.ten,
                                                              groupValue:
                                                                  _timeEnum,
                                                              title: Text(
                                                                  '10.00 A.M'),
                                                              onChanged: (val) {
                                                                setState(() {
                                                                  _timeEnum =
                                                                      val;
                                                                });
                                                              }),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 110,
                                                    child: Flexible(
                                                      fit: FlexFit.loose,
                                                      child: ListTileTheme(
                                                        horizontalTitleGap: 0,
                                                        child: Transform.scale(
                                                          scale: .8,
                                                          child: RadioListTile<
                                                                  TimeEnum>(
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .all(0.0),
                                                              dense: true,
                                                              tileColor: Colors
                                                                  .blue[50],
                                                              value: TimeEnum
                                                                  .eleven,
                                                              groupValue:
                                                                  _timeEnum,
                                                              title: Text(
                                                                  '11.00 A.M'),
                                                              onChanged: (val) {
                                                                setState(() {
                                                                  _timeEnum =
                                                                      val;
                                                                });
                                                              }),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 110,
                                                    child: Flexible(
                                                      fit: FlexFit.loose,
                                                      child: ListTileTheme(
                                                        horizontalTitleGap: 0,
                                                        child: Transform.scale(
                                                          scale: .8,
                                                          child: RadioListTile<
                                                                  TimeEnum>(
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .all(0.0),
                                                              dense: true,
                                                              tileColor: Colors
                                                                  .blue[50],
                                                              value: TimeEnum
                                                                  .twelve,
                                                              groupValue:
                                                                  _timeEnum,
                                                              title: Text(
                                                                  '12.00 P.M'),
                                                              onChanged: (val) {
                                                                setState(() {
                                                                  _timeEnum =
                                                                      val;
                                                                });
                                                              }),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 110,
                                                    child: Flexible(
                                                      fit: FlexFit.loose,
                                                      child: ListTileTheme(
                                                        horizontalTitleGap: 0,
                                                        child: Transform.scale(
                                                          scale: .8,
                                                          child: RadioListTile<
                                                                  TimeEnum>(
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .all(0.0),
                                                              dense: true,
                                                              tileColor: Colors
                                                                  .blue[50],
                                                              value:
                                                                  TimeEnum.four,
                                                              groupValue:
                                                                  _timeEnum,
                                                              title: Text(
                                                                  '4.00 P.M'),
                                                              onChanged: (val) {
                                                                setState(() {
                                                                  _timeEnum =
                                                                      val;
                                                                });
                                                              }),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 110,
                                                    child: Flexible(
                                                      fit: FlexFit.loose,
                                                      child: ListTileTheme(
                                                        horizontalTitleGap: 0,
                                                        child: Transform.scale(
                                                          scale: .8,
                                                          child: RadioListTile<
                                                                  TimeEnum>(
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .all(0.0),
                                                              dense: true,
                                                              tileColor: Colors
                                                                  .blue[50],
                                                              value:
                                                                  TimeEnum.five,
                                                              groupValue:
                                                                  _timeEnum,
                                                              title: Text(
                                                                  '5.00 P.M'),
                                                              onChanged: (val) {
                                                                setState(() {
                                                                  _timeEnum =
                                                                      val;
                                                                });
                                                              }),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          )
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
                                                  decoration:
                                                      const InputDecoration(
                                                          contentPadding:
                                                              EdgeInsets.all(4),
                                                          border:
                                                              OutlineInputBorder(),
                                                          prefixIcon: Icon(
                                                              Icons.people),
                                                          labelText:
                                                              'Patient Name'),
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
                                                  decoration:
                                                      const InputDecoration(
                                                          contentPadding:
                                                              EdgeInsets.all(4),
                                                          border:
                                                              OutlineInputBorder(),
                                                          prefixIcon:
                                                              Icon(Icons.phone),
                                                          labelText:
                                                              'Phone Number'),
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
                                                  child:
                                                      DropdownButtonFormField(
                                                    value: _seletedGender,
                                                    items: _gender
                                                        .map((e) =>
                                                            DropdownMenuItem(
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
                                                      Icons
                                                          .arrow_drop_down_circle,
                                                      color: Colors.blue,
                                                    ),
                                                    dropdownColor:
                                                        Colors.blue[50],
                                                    decoration: InputDecoration(
                                                        labelText:
                                                            "Select Gender",
                                                        contentPadding:
                                                            EdgeInsets.all(4),
                                                        border:
                                                            OutlineInputBorder(),
                                                        prefixIcon:
                                                            Icon(Icons.person)),
                                                  )),
                                              Container(
                                                  width: 150,
                                                  child:
                                                      DropdownButtonFormField(
                                                    value: _seletedBlood,
                                                    items: _blood
                                                        .map((e) =>
                                                            DropdownMenuItem(
                                                              child: Text(e),
                                                              value: e,
                                                            ))
                                                        .toList(),
                                                    onChanged: (val) {
                                                      setState(() {
                                                        _seletedBlood =
                                                            val as String;
                                                      });
                                                    },
                                                    icon: const Icon(
                                                      Icons
                                                          .arrow_drop_down_circle,
                                                      color: Colors.blue,
                                                    ),
                                                    dropdownColor:
                                                        Colors.blue[50],
                                                    decoration: InputDecoration(
                                                        contentPadding:
                                                            EdgeInsets.all(4),
                                                        labelText:
                                                            "Blood Group",
                                                        border:
                                                            OutlineInputBorder(),
                                                        prefixIcon: Icon(Icons
                                                            .bloodtype_rounded)),
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
                                  onPressed: () {},
                                  child: Text('Confirm'.toUpperCase(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue)),
                                )
                              ],
                            )),
                      ],
                    ),
                  );
                })));
  }
}
