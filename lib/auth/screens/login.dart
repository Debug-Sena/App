import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_reports/auth/repository/auth_repository.dart';
import 'package:my_reports/auth/screens/register.dart';
import 'package:my_reports/common/app_colors.dart';
import 'package:my_reports/common/user_type.enum.dart';
import 'package:my_reports/common/widgets/my_appbar.dart';
import 'package:my_reports/common/widgets/my_textfield.dart';
import 'package:my_reports/patient/patient_home/screens/widgets/my_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key, required this.userType}) : super(key: key);
  final UserType userType;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyTextfield(
              hintText: 'Email',
              keyboardType: TextInputType.emailAddress,
              onChanged: (val) {
                setState(() {
                  email = val;
                });
              },
            ),
            SizedBox(height: 20),
            MyTextfield(
              hintText: 'Password',
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              onChanged: (val) {
                setState(() {
                  password = val;
                });
              },
            ),
            SizedBox(height: 20),
            MyButton(
              text: 'Login',
              buttonColor: AppColors.brown,
              onPressed: () async {
                FocusScope.of(context).unfocus();
                AuthRepository().login(
                  widget.userType,
                  email,
                  password,
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            if (widget.userType == UserType.patient)
              InkWell(
                onTap: () {
                  FocusScope.of(context).unfocus();
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterScreen(),
                      ));
                },
                child: Text(
                  'No Account? Register',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
