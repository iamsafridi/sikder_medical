import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(23.791550721631562, 90.42012059873181);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color.fromARGB(50, 208, 226, 240),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 300),
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 17.0,
                ),
              ),
            ),
          ),
          // ListView(children: [
          Container(
              padding: EdgeInsets.only(top: 370),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                    child: Text(
                        'Zainul Haque Sikder Medical Collage & Hospital \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t(PVT) Ltd',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: Text('Gulshan Branch',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0)),
                  ),
                  SizedBox(
                    height: 5, // <-- SEE HERE
                  ),
                  const Center(
                    child: Text('House:05, Road:104, Gulshan-2,Dhaka 1212',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0)),
                  ),
                  SizedBox(
                    height: 30, // <-- SEE HERE
                  ),
                  const Text('Mobile: 01313 752 222',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0)),
                  const Text('Hotline: 09609004444',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0)),
                  SizedBox(
                    height: 10, // <-- SEE HERE
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(
                      Icons.facebook,
                      color: Colors.blue[500],
                    ),
                    InkWell(
                      child: Text('Facebook',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0)),
                      // ignore: deprecated_member_use
                      onTap: () =>
                          // ignore: deprecated_member_use
                          launch('https://www.facebook.com/zhsikderwmch'),
                    )
                  ]),
                  SizedBox(
                    height: 5,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(
                      Icons.email,
                      color: Colors.orange[500],
                    ),
                    InkWell(
                      child: Text('info@sikderhospital.net',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0)),
                      // ignore: deprecated_member_use
                      onTap: () => launch('mailto:info@sikderhospital.net'),
                    )
                    // const Text('info@sikderhospital.net',
                    //     style: TextStyle(
                    //         fontWeight: FontWeight.bold, fontSize: 18.0)),
                  ]),
                  SizedBox(
                    height: 5,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(
                      Icons.web,
                      color: Colors.red[500],
                    ),
                    InkWell(
                      child: Text('www.sikderhospital.net',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0)),
                      // ignore: deprecated_member_use
                      onTap: () => launch('https://www.sikderhospital.net'),
                    )
                  ]),
                ],
              )),
          // ])
        ],
      ),
    );
  }
}