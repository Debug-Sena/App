import 'package:flutter/material.dart';
import 'package:my_reports/auth/repository/auth_repository.dart';
import 'package:my_reports/auth/screens/login.dart';
import 'package:my_reports/common/app_colors.dart';
import 'package:my_reports/common/user_type.enum.dart';
import 'package:my_reports/common/widgets/my_appbar.dart';
import 'package:my_reports/common/widgets/my_textfield.dart';
import 'package:my_reports/patient/patient_home/screens/widgets/my_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String fullName = '';
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
              hintText: 'Full Name',
              keyboardType: TextInputType.emailAddress,
              onChanged: (val) {
                setState(() {
                  fullName = val;
                });
              },
            ),
            SizedBox(height: 20),
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
              keyboardType: TextInputType.emailAddress,
              onChanged: (val) {
                setState(() {
                  password = val;
                });
              },
            ),
            SizedBox(height: 20),
            MyButton(
              text: 'Register',
              buttonColor: AppColors.brown,
              onPressed: () async {
                FocusScope.of(context).unfocus();
                await AuthRepository().register(fullName, email, password);
              },
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                FocusScope.of(context).unfocus();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(
                        userType: UserType.patient,
                      ),
                    ));
              },
              child: Text(
                'Already have an account? Login',
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
