import 'package:flutter/material.dart';
import 'login.dart';
import '../../common/app_colors.dart';
import '../../common/user_type.enum.dart';
import '../../patient/patient_home/screens/widgets/my_button.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: Image.asset(
                  'assets/doctor.png',
                  fit: BoxFit.fitHeight,
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  text: 'Patient',
                  buttonColor: AppColors.yellow,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            LoginScreen(userType: UserType.patient),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                MyButton(
                  text: 'Doctor',
                  buttonColor: AppColors.yellow,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            LoginScreen(userType: UserType.doctor),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
