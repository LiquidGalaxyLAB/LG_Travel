// TODO 2: Import 'dartssh2' package
import 'package:dartssh2/dartssh2.dart';

import 'dart:async';
import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';

class SSH {
  late String _host;
  late String _port;
  late String _username;
  late String _passwordOrKey;
  late String _numberOfRigs;
  SSHClient? _client;

  // Initialize connection details from shared preferences
  Future<void> initConnectionDetails() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    _host = prefs.getString('ipAddress') ?? 'default_host';
    _port = prefs.getString('sshPort') ?? '22';
    _username = prefs.getString('username') ?? 'lg';
    _passwordOrKey = prefs.getString('password') ?? 'lg';
    _numberOfRigs = prefs.getString('numberOfRigs') ?? '3';
  }

  // Connect to the Liquid Galaxy system
  Future<bool?> connectToLG() async {
    await initConnectionDetails();

    try {
      final socket = await SSHSocket.connect(_host, int.parse(_port));
      // TODO 3: Connect to Liquid Galaxy system, using examples from https://pub.dev/packages/dartssh2#:~:text=freeBlocks%7D%27)%3B-,%F0%9F%AA%9C%20Example%20%23,-SSH%20client%3A
      _client = SSHClient(
        socket,
        username: _username,
        onPasswordRequest: () => _passwordOrKey,
      );
      // const Duration(seconds: 20);
      print(_host);
      print(_passwordOrKey);
      print(_port);
      return true;
    } on SocketException catch (e) {
      print('Failed to connect: $e');
      return false;
    }
  }

  Future<SSHSession?> execute(String name) async {
    try {
      if (_client == null) {
        print('SSH client is not initialized.');
        return null;
      }
      //   TODO 4: Execute a demo command: echo "search=Lleida" >/tmp/query.txt
      final execResult =
          await _client!.execute('echo "search=$name" > /tmp/query.txt');

      return execResult;
    } catch (e) {
      print('An error occurred while executing the command: $e');
      return null;
    }
  }

  // DEMO above, all the other functions below
//   TODO 11: Make functions for each of the tasks in the home screen
}
