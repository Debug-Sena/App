import 'package:flutter/material.dart';

import '../../common/my_shared_pref.dart';
import '../../patient/patient_home/screens/patient_homescreen.dart';
import 'first_screen.dart';

class AuthWrapper extends StatefulWidget {
  const AuthWrapper({Key? key}) : super(key: key);

  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  Future<void> getIns() async {
    await MySharedPref.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: MySharedPref.getInstance(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          print('eror');
        }
        if (snapshot.connectionState == ConnectionState.done) {
          if (MySharedPref.isLoggedIn) {
            return PatientHomeScreen();
          } else {
            return FirstScreen();
          }
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
