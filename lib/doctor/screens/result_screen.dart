import 'package:flutter/material.dart';
import 'package:my_reports/common/widgets/my_appbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_reports/doctor/scan_cubit/scan_cubit.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSuccess = context.read<ScanCubit>().state.emailSent;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isSuccess ? 'Scan Successful' : 'Scan Failed',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w400,
                color: isSuccess ? Colors.green : Colors.red,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(isSuccess ? 'Please check you email 🙂' : 'User not found ☹️')
          ],
        ),
      ),
    );
  }
}
