import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:http/http.dart' as http;

class DrMahi extends StatefulWidget {
  const DrMahi({super.key});

  @override
  State<DrMahi> createState() => _DrMahiState();
}

class _DrMahiState extends State<DrMahi> {
  _DrMahiState() {
    _seletedTime = _time[0];
    _seletedGender = _gender[0];
    _seletedBlood = _blood[0];
  }

  TextEditingController _date = TextEditingController();
  TextEditingController _name = TextEditingController();
  TextEditingController _drname =
      TextEditingController(text: 'Dr. MD. MAHI UDDIN');

  final _time = [
    "",
    "10:00 AM",
    "10:30 AM",
    "11:00 AM",
    "11:30 AM",
    "12:00 PM",
    "12:30 PM",
    "1:00 PM",
    "1:30 PM",
    "2:00 PM",
    "2:30 PM",
    "3:30 PM",
    "4:00 PM",
    "4:30 PM",
    "5:00 PM",
    "5:30 PM",
    "6:00 PM",
  ];
  final _gender = ["", "Male", "Female", "Other"];
  final _blood = ["", "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"];
  String? _seletedTime = "";
  String? _seletedGender = "";
  String? _seletedBlood = "";
  String? _phone;

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
                                          "assets/images/dr/drmohi.png",
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
                                          'MBBS, FMD (Medicine), CCD (BIRDEM)\nFID (UK), FICM (India)\nProfessional Member-IASCT (USA), IACT (Europe)\nSenior Consultant\nMedicine & Diabetes Specialist'),
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
                                                  'Select Date (Sat - Thu)'),
                                          onTap: () async {
                                            DateTime? pickdate =
                                                await showDatePicker(
                                                    context: context,
                                                    initialDate: DateTime.now(),
                                                    firstDate: DateTime.now(),
                                                    lastDate: DateTime(2101));

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
                                          child: IntlPhoneField(
                                            initialCountryCode: 'BD',
                                            onChanged: (phone) {
                                              _phone = phone.completeNumber;
                                              // print(phone.completeNumber);
                                            },
                                            decoration: const InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.all(4),
                                                border: OutlineInputBorder(),
                                                prefixIcon: Icon(Icons.phone),
                                                labelText: 'Phone Number'),
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
      "number": _phone,
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
