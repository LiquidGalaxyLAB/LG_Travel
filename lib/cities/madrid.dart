import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:food/models/nations.dart';
import 'package:latlong2/latlong.dart';

class MadridPage extends StatefulWidget {
  const MadridPage({super.key});

  @override
  State<MadridPage> createState() => _MadridPageState();
}

class _MadridPageState extends State<MadridPage> {
  List<NationModel> nations = [];

  void _getInitialInfo() {
    nations = NationModel.getNations();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Madrid",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              nations[3].flagPath,
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.dstATop,
              color: Colors.black.withOpacity(0.35),
            ),
          ),
          Positioned.fill(
            top: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(children: [
                SingleChildScrollView(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image.asset(
                          nations[3]
                              .foodPath, // Replace with your image asset path
                          fit: BoxFit.cover,
                          width: 100, // Set your desired width
                          height: 400,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                nations[3].title,
                                style: const TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                nations[3].description,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              // Add more text or widgets for your content
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Text("Popular locations",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: SizedBox(
                        height: 500,
                        child: FlutterMap(
                            options: MapOptions(
                              initialCenter: LatLng(
                                  nations[3].centerLat, nations[3].centerLong),
                              initialZoom: 15,
                            ),
                            children: [
                              TileLayer(
                                urlTemplate:
                                    'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                                // subdomains: ['a', 'b', 'c'],
                                userAgentPackageName: 'com.example.app',
                                tileSize: 256,
                              ),
                              MarkerLayer(
                                markers: [
                                  //28.607532562790947, 77.26296847283321
                                  Marker(
                                    point: LatLng(
                                        nations[3].lat1, nations[3].longi1),
                                    width: 10,
                                    height: 10,
                                    child: const Icon(Icons.location_on,
                                        size: 50, color: Colors.red),
                                  ),
                                  Marker(
                                    point: LatLng(
                                        nations[3].lat2, nations[3].longi2),
                                    width: 10,
                                    height: 10,
                                    child: const Icon(Icons.location_on,
                                        size: 50, color: Colors.red),
                                  ),
                                  //28.599092746111335, 77.19224398692732
                                  Marker(
                                    point: LatLng(
                                        nations[3].lat3, nations[3].longi3),
                                    width: 10,
                                    height: 10,
                                    child: const Icon(Icons.location_on,
                                        size: 50, color: Colors.red),
                                  ),
                                  Marker(
                                    point: LatLng(
                                        nations[3].lat4, nations[3].longi4),
                                    width: 10,
                                    height: 10,
                                    child: const Icon(Icons.location_on,
                                        size: 50, color: Colors.red),
                                  ),
                                  Marker(
                                    point: LatLng(
                                        nations[3].lat5, nations[3].longi5),
                                    width: 10,
                                    height: 10,
                                    child: const Icon(Icons.location_on,
                                        size: 50, color: Colors.red),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                  ],
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
