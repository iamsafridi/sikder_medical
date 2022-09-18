import 'package:flutter/material.dart';

class StarterPage extends StatelessWidget {
  const StarterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/medical_cover.jpeg'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          children: [
            Container(
                padding: EdgeInsets.only(left: 200, top: 580),
                child: ElevatedButton(
                  child: Text("Welcome"),
                  style: TextButton.styleFrom(
                      shape: StadiumBorder(),
                      minimumSize: Size(200, 60),
                      backgroundColor: Colors.blue),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ))
          ],
        ),
      ),
    );
  }
}
