import 'package:flutter/material.dart';

import 'package:food/models/info_places.dart';
import 'package:food/models/nations.dart';

class PeruPage extends StatefulWidget {
  const PeruPage({super.key});

  @override
  State<PeruPage> createState() => _PeruPageState();
}

class _PeruPageState extends State<PeruPage> {
  List<NationModel> nations = [];
  List<InfoModel> info = [];

  void _getInitialInfo() {
    nations = NationModel.getNations();
    info = InfoModel.getInfo();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Machu Picchu",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            top: 0,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 120),
              child: ListView(children: [
                SingleChildScrollView(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image.asset(
                          info[7]
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
                                info[7].title,
                                style: const TextStyle(
                                    fontSize: 35,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                info[7].description,
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
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
