import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:food/models/nations.dart';
import 'package:latlong2/latlong.dart';

class LondonPage extends StatefulWidget {
  const LondonPage({super.key});

  @override
  State<LondonPage> createState() => _LondonPageState();
}

class _LondonPageState extends State<LondonPage> {
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
          "London",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              nations[2].flagPath,
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
                          nations[2]
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
                                nations[2].title,
                                style: const TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                nations[2].description,
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
                                  nations[2].centerLat, nations[2].centerLong),
                              initialZoom: 12,
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
                                        nations[2].lat1, nations[2].longi1),
                                    width: 10,
                                    height: 10,
                                    child: const Icon(Icons.location_on,
                                        size: 50, color: Colors.red),
                                  ),
                                  Marker(
                                    point: LatLng(
                                        nations[2].lat2, nations[2].longi2),
                                    width: 10,
                                    height: 10,
                                    child: const Icon(Icons.location_on,
                                        size: 50, color: Colors.red),
                                  ),
                                  //28.599092746111335, 77.19224398692732
                                  Marker(
                                    point: LatLng(
                                        nations[2].lat3, nations[2].longi3),
                                    width: 10,
                                    height: 10,
                                    child: const Icon(Icons.location_on,
                                        size: 50, color: Colors.red),
                                  ),
                                  Marker(
                                    point: LatLng(
                                        nations[2].lat4, nations[2].longi4),
                                    width: 10,
                                    height: 10,
                                    child: const Icon(Icons.location_on,
                                        size: 50, color: Colors.red),
                                  ),
                                  Marker(
                                    point: LatLng(
                                        nations[2].lat5, nations[2].longi5),
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
