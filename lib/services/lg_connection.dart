import 'package:shared_preferences/shared_preferences.dart';
import 'package:dartssh2/dartssh2.dart';

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
