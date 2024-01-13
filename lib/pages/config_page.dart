import 'package:food/services/lg_connection.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:logger/logger.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({super.key});

  @override
  State<ConfigPage> createState() => ConfigPageState();
}

class ConfigPageState extends State<ConfigPage> {
  var logger = Logger();
  bool isConnected = false;
  bool loaded = false;
  String errorCode = '';
  String errorMessage = '';
  late bool visiblePassword;
  final _usernameController = TextEditingController();
  final _ipAddressController = TextEditingController();
  final _passwordController = TextEditingController();
  final _totalMachinesController = TextEditingController();

  connect() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString('ip', _ipAddressController.text);
    await preferences.setString('password', _passwordController.text);
    await preferences.setString('user', _usernameController.text);
    await preferences.setInt(
        'screen', int.parse(_totalMachinesController.text));

    bool res = await LGConnection().connect();
    setState(() {
      isConnected = res;
    });
  }

  disconnect() {
    LGConnection().disconnect();
  }

  checkConnectionStatus() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString('ip', _ipAddressController.text);
    await preferences.setString('password', _passwordController.text);
    await preferences.setString('host', _ipAddressController.text);
    await preferences.setInt(
        'screen', int.parse(_totalMachinesController.text));

    bool res = await LGConnection().checkConnection();

    setState(() {
      isConnected = res;
    });
    return res;
  }

  init() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    _ipAddressController.text = preferences.getString('ip') ?? '';
    _passwordController.text = preferences.getString('password') ?? '';
    _usernameController.text = preferences.getString('user') ?? '';
    _totalMachinesController.text =
        (preferences.getInt('screen') ?? 5).toString();

    await checkConnectionStatus();

    loaded = true;
  }

  @override
  void initState() {
    visiblePassword = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (!loaded) init();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Config LG',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.only(left: 50, right: 50, bottom: 50),
          children: [
            const SizedBox(height: 80),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Text(
                      'Connection status: ',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        isConnected ? 'CONNECTED' : 'DISCONNECTED',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    isConnected
                        ? const Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 25,
                          )
                        : const Icon(
                            Icons.cancel,
                            color: Colors.red,
                            size: 25,
                          ),
                  ],
                ),
                const SizedBox(height: 20),
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  controller: _ipAddressController,
                  decoration: const InputDecoration(
                    label: Text(
                      'Master machine IP address',
                      style: TextStyle(color: Colors.white),
                    ),
                    // labelStyle: TextStyle(color: Colors.white),
                    hintText: '192.168.10.21',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white), // Set the initial border color
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    label: Text(
                      'Master machine username',
                      style: TextStyle(color: Colors.white),
                    ),
                    hintText: 'lg',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white), // Set the initial border color
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  controller: _passwordController,
                  obscureText: !visiblePassword,
                  decoration: InputDecoration(
                    label: const Text(
                      'Master machine password',
                      style: TextStyle(color: Colors.white),
                    ),
                    hintText: 'p@ssw0rd',
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white), // Set the initial border color
                    ),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    suffixIcon: IconButton(
                      icon: Icon(
                        visiblePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          visiblePassword = !visiblePassword;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  controller: _totalMachinesController,
                  decoration: const InputDecoration(
                    label: Text(
                      'Total machines in LG rig',
                      style: TextStyle(color: Colors.white),
                    ),
                    hintText: '3',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white), // Set the initial border color
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(left: 150.0),
                  child: Row(
                    children: [
                      SizedBox(
                          height: 50,
                          width: 200,
                          child: ElevatedButton(
                              onPressed: () {
                                connect();
                              },
                              child: const Text(
                                'Connect to LG',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ))),
                      const Spacer(),
                      SizedBox(
                          height: 50,
                          width: 200,
                          child: ElevatedButton(
                              onPressed: () {
                                disconnect();
                                setState(() {
                                  isConnected = false;
                                });
                                isConnected == false
                                    ? logger.i("Connection gaya")
                                    : logger.i("Reh gaya");
                              },
                              child: const Text(
                                'Disconnect',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ))),
                      const Spacer(),
                      // SizedBox(
                      //     height: 50,
                      //     width: 200,
                      //     child: ElevatedButton(
                      //         onPressed: () {
                      //           clean();
                      //         },
                      //         child: const Text(
                      //           'Clean KML',
                      //           style: TextStyle(fontSize: 20),
                      //         ))),
                      const Spacer(),
                      // SizedBox(
                      //     height: 50,
                      //     width: 200,
                      //     child: ElevatedButton(
                      //         onPressed: () {
                      //           relaunch();
                      //         },
                      //         child: const Text(
                      //           'Relaunch LG',
                      //           style: TextStyle(fontSize: 20),
                      //         ))),
                      const Spacer(),
                      // SizedBox(
                      //     height: 50,
                      //     width: 200,
                      //     child: ElevatedButton(
                      //         onPressed: () {
                      //           shutDown();
                      //         },
                      //         child: const Text(
                      //           'Shut Down LG',
                      //           style: TextStyle(fontSize: 20),
                      //         ))),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
