import 'package:dartssh2/dartssh2.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food/models/category_models.dart';
import 'package:food/pages/config_page.dart';
import 'package:food/cities/constants.dart';
import 'package:food/services/lg_connection.dart';
import 'package:flutter/material.dart';
import 'package:food/services/ssh.dart';
import 'package:logger/logger.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() {
    return DashboardPageState();
  }
}

bool isConnected = false;

class DashboardPageState extends State<DashboardPage> {
  var logger = Logger();
  List<CategoryModel> categories = [];

  bool loaded = false;
  bool loadedData = false;
  String date = '';

  void _getInitialInfo() {
    categories = CategoryModel.getCategories();
    // diets = DietModel.getDiets();
    // popularDiets = PopularDietsModel.getPopularDiets();
  }

  // init() async {
  //   await checkConnection();
  //   // isConnected = true;
  //   loaded = true;
  // }
  init() async {
    await checkConnectionStatus();
    loaded = true;
  }

  checkConnectionStatus() async {
    bool res = await LGConnection().checkConnection();

    setState(() {
      isConnected = res;

      loaded = true;
    });
    return res;
  }

  List<Widget> notLoaded() {
    return const [
      SizedBox(
          height: 400,
          width: 420,
          child: Card(
              color: Colors.white,
              child: Center(child: CircularProgressIndicator()))),
      SizedBox(
          height: 400,
          width: 420,
          child: Card(
              color: Colors.white,
              child: Center(child: CircularProgressIndicator()))),
      SizedBox(
          height: 400,
          width: 420,
          child: Card(
              color: Colors.white,
              child: Center(child: CircularProgressIndicator()))),
    ];
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    init();
    checkConnectionStatus();

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: appBar(context),
        body: ListView(
          children: [const SizedBox(height: 20), _popularBreakfasts()],
        ));
  }

  Column _popularBreakfasts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text("Popular Breakfasts in ",
              style: TextStyle(color: Colors.white, fontSize: 17)),
        ),
        const SizedBox(height: 25),
        SizedBox(
          height: 200,
          // decoration: const BoxDecoration(color: Colors.amber),
          child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                    width: 25,
                  ),
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20, right: 20),
              itemBuilder: (context, index) {
                return Container(
                    width: 150,
                    decoration: BoxDecoration(
                        color: categories[index].boxColor.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: 65,
                              height: 65,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child:
                                  SvgPicture.asset(categories[index].iconPath)),
                          Text(categories[index].name,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(0, 0, 0, 1))),
                          GestureDetector(
                            onTap: () async {
                              String page = categories[index].name;
                              switch (page) {
                                case 'Delhi':
                                  SSH ssh =
                                      SSH(); //Re-initialization of the SSH instance to avoid errors for beginners
                                  await ssh.connectToLG();
                                  SSHSession? execResult =
                                      await ssh.execute(page);
                                  if (execResult != null) {
                                    print('Command executed successfully');
                                  } else {
                                    print('Failed to execute command');
                                  }
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const DelhiPage()),
                                  );
                                  break;

                                case 'Paris':
                                  SSH ssh =
                                      SSH(); //Re-initialization of the SSH instance to avoid errors for beginners
                                  await ssh.connectToLG();
                                  SSHSession? execResult =
                                      await ssh.execute(page);
                                  if (execResult != null) {
                                    print('Command executed successfully');
                                  } else {
                                    print('Failed to execute command');
                                  }
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ParisPage()),
                                  );
                                  break;

                                case 'London':
                                  SSH ssh =
                                      SSH(); //Re-initialization of the SSH instance to avoid errors for beginners
                                  await ssh.connectToLG();
                                  SSHSession? execResult =
                                      await ssh.execute(page);
                                  if (execResult != null) {
                                    print('Command executed successfully');
                                  } else {
                                    print('Failed to execute command');
                                  }
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LondonPage()),
                                  );
                                  break;

                                case 'Madrid':
                                  SSH ssh =
                                      SSH(); //Re-initialization of the SSH instance to avoid errors for beginners
                                  await ssh.connectToLG();
                                  SSHSession? execResult =
                                      await ssh.execute(page);
                                  if (execResult != null) {
                                    print('Command executed successfully');
                                  } else {
                                    print('Failed to execute command');
                                  }
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MadridPage()),
                                  );
                                  break;

                                case 'Mumbai':
                                  SSH ssh =
                                      SSH(); //Re-initialization of the SSH instance to avoid errors for beginners
                                  await ssh.connectToLG();
                                  SSHSession? execResult =
                                      await ssh.execute(page);
                                  if (execResult != null) {
                                    print('Command executed successfully');
                                  } else {
                                    print('Failed to execute command');
                                  }
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MumbaiPage()),
                                  );
                                  break;

                                case 'Berlin':
                                  SSH ssh =
                                      SSH(); //Re-initialization of the SSH instance to avoid errors for beginners
                                  await ssh.connectToLG();
                                  SSHSession? execResult =
                                      await ssh.execute(page);
                                  if (execResult != null) {
                                    print('Command executed successfully');
                                  } else {
                                    print('Failed to execute command');
                                  }
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BerlinPage()),
                                  );
                                  break;

                                case 'Rome':
                                  SSH ssh =
                                      SSH(); //Re-initialization of the SSH instance to avoid errors for beginners
                                  await ssh.connectToLG();
                                  SSHSession? execResult =
                                      await ssh.execute(page);
                                  if (execResult != null) {
                                    print('Command executed successfully');
                                  } else {
                                    print('Failed to execute command');
                                  }
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const RomePage()),
                                  );
                                  break;

                                case 'Barcelona':
                                  SSH ssh =
                                      SSH(); //Re-initialization of the SSH instance to avoid errors for beginners
                                  await ssh.connectToLG();
                                  SSHSession? execResult =
                                      await ssh.execute(page);
                                  if (execResult != null) {
                                    print('Command executed successfully');
                                  } else {
                                    print('Failed to execute command');
                                  }
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BarcelonaPage()),
                                  );
                                  break;

                                default:
                                  break;
                              }
                            },
                            child: Container(
                              height: 25,
                              width: 80,
                              // color: Colors.green,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)),
                              child: const Center(
                                child: Text("Let's Go",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                              ),
                            ),
                          ),
                        ]));
              }),
        )
      ],
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () {
          Navigator.pop(context); // Navigate back to the previous screen
        },
      ),
      title: const Row(children: [
        SizedBox(width: 15),
        Text(
          'Food To Devour',
          style: TextStyle(color: Colors.white),
        ),
      ]),
      actions: [
        Chip(
            label: Row(children: [
              const Text('LG Connection: '),
              isConnected == true
                  ? const Icon(
                      Icons.circle,
                      color: Colors.green,
                      size: 20,
                    )
                  : const Icon(
                      Icons.circle,
                      color: Colors.red,
                      size: 20,
                    )
            ]),
            backgroundColor: Colors.white),
        const SizedBox(width: 15),
        IconButton(
            iconSize: 35,
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SettingsPage()));
            },
            icon: const Icon(Icons.settings)),
        // IconButton(
        //     iconSize: 35,
        //     onPressed: () {
        //       Navigator.of(context).push(MaterialPageRoute(
        //           builder: (context) => const AboutPage()));
        //     },
        //     icon: const Icon(Icons.info))
      ],
    );
  }
}
