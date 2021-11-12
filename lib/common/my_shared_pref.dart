import 'package:shared_preferences/shared_preferences.dart';

class MySharedPref {
  static late SharedPreferences pref;

  static Future<void> getInstance() async {
    pref = await SharedPreferences.getInstance();
  }

  static bool get isLoggedIn {
    return pref.getBool('isLoggedIn') ?? false;
  }

  static int get patientId {
    return pref.getInt('patientId') ?? 0;
  }

  static Future<void> login(int patientId) async {
    await pref.setBool('isLoggedIn', true);
    await pref.setInt('patientId', patientId);
  }

  static Future<void> logout() async {
    await pref.setBool('isLoggedIn', false);
    await pref.setInt('patientId', 0);
  }
}
