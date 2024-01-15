import 'package:shared_preferences/shared_preferences.dart';
import 'package:dartssh2/dartssh2.dart';
import 'dart:async';
import 'dart:io';

class LGConnection {
  late SSHClient client;
  late SSHSocket socket;
  late dynamic credentials;
  late int screenAmount;

  int get leftScreen {
    if (screenAmount == 1) {
      return 1;
    }

    return (screenAmount / 2).floor() + 2;
  }

  int get rightScreen {
    if (screenAmount == 1) {
      return 1;
    }

    return (screenAmount / 2).floor() + 1;
  }

  _getCredentials() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String ip = preferences.getString('ip') ?? '';
    String password = preferences.getString('password') ?? 'lg';
    String user = preferences.getString('user') ?? 'lg';
    int screen = preferences.getInt('screen') ?? 3;

    screenAmount = screen;

    return {"ip": ip, "pass": password, "user": user, 'screen': screen};
  }

  Future<String?> getScreenAmount() async {
    credentials = await _getCredentials();
    socket = await SSHSocket.connect('${credentials['ip']}', 22,
        timeout: const Duration(seconds: 10));

    client = SSHClient(socket,
        username: '${credentials['user']}',
        onPasswordRequest: () => '${credentials['pass']}');
    client.execute("grep -oP '(?<=DHCP_LG_FRAMES_MAX=).*' personavars.txt");
    return '3';
  }

  connect() async {
    credentials = await _getCredentials();
    try {
      socket = await SSHSocket.connect('${credentials['ip']}', 22,
          timeout: const Duration(seconds: 10));

      client = SSHClient(socket,
          username: '${credentials['user']}',
          onPasswordRequest: () => '${credentials['pass']}');
      return true;
    } catch (e) {
      return false;
    }
  }

  disconnect() async {
    credentials = await _getCredentials();
    socket = await SSHSocket.connect('${credentials['ip']}', 22,
        timeout: const Duration(seconds: 10));
    client = SSHClient(socket,
        username: '${credentials['user']}',
        onPasswordRequest: () => '${credentials['pass']}');
    await client.execute("echo '' > /var/www/html/kml/slave_$leftScreen.kml");
    client.close();
  }

  Future<SSHSession?> execute() async {
    try {
      if (client == null) {
        print('SSH client is not initialized.');
        return null;
      }
      //   TODO 4: Execute a demo command: echo "search=Lleida" >/tmp/query.txt
      final execResult =
          await client!.execute('echo "search=Paris" > /tmp/query.txt');

      return execResult;
    } catch (e) {
      print('An error occurred while executing the command: $e');
      return null;
    }
  }

  cleanKML() async {
    credentials = await _getCredentials();
    socket = await SSHSocket.connect('${credentials['ip']}', 22,
        timeout: const Duration(seconds: 10));

    client = SSHClient(socket,
        username: '${credentials['user']}',
        onPasswordRequest: () => '${credentials['pass']}');
    String nullKML = '''<?xml version="1.0" encoding="UTF-8"?>
  <kml xmlns="http://www.opengis.net/kml/2.2" xmlns:gx="http://www.google.com/kml/ext/2.2" xmlns:kml="http://www.opengis.net/kml/2.2" xmlns:atom="http://www.w3.org/2005/Atom">
    <Document>
    </Document>
  </kml>''';
    try {
      await client.run("echo '' > /var/www/html/kmls.txt");
      await client
          .run("echo '$nullKML' > /var/www/html/kml/slave_$rightScreen.kml");
      await client
          .run("echo '$nullKML' > /var/www/html/kml/slave_$leftScreen.kml");
      client.close();
    } catch (e) {
      throw Exception('ERROR ON CLEAN VISUALIZATION: $e');
    }
  }

  sendKML(String fileName, String kml, String flyTo) async {
    credentials = await _getCredentials();
    try {
      socket = await SSHSocket.connect('${credentials['ip']}', 22,
          timeout: const Duration(seconds: 10));
      client = SSHClient(socket,
          username: '${credentials['user']}',
          onPasswordRequest: () => '${credentials['pass']}');
      await client.run("echo '$kml' > /var/www/html/$fileName.kml");
      await client
          .run('echo "http://lg1:81/$fileName.kml" > /var/www/html/kmls.txt');
      await client.run("echo '$flyTo' > /tmp/query.txt");
      client.close();
    } catch (e) {
      throw Exception('ERROR ON SEND KML FILE: $e');
    }
  }

  checkConnection() async {
    credentials = await _getCredentials();
    try {
      socket = await SSHSocket.connect('${credentials['ip']}', 22,
          timeout: const Duration(seconds: 10));
      client = SSHClient(socket,
          username: '${credentials['user']}',
          onPasswordRequest: () => '${credentials['pass']}');
      return true;
    } catch (e) {
      return false;
    }
  }
}
