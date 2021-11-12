import 'package:flutter/material.dart';
import 'package:my_reports/common/app_colors.dart';
import 'package:my_reports/patient/add_details/screen/patient_add_details_screen.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'widgets/my_button.dart';

class PatientHomeScreen extends StatefulWidget {
  const PatientHomeScreen({Key? key}) : super(key: key);

  @override
  State<PatientHomeScreen> createState() => _PatientHomeScreenState();
}

class _PatientHomeScreenState extends State<PatientHomeScreen> {
  late final String patientId;

  @override
  void initState() {
    super.initState();
    //todo make dynamic
    patientId = '12345';
  }

  @override
  Widget build(BuildContext context) {
    const double padding = 30;
    final qrSize = MediaQuery.of(context).size.width - padding * 2;
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: padding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QrImage(
              data: patientId,
              size: qrSize,
            ),
            SizedBox(
              height: 30,
            ),
            MyButton(
              text: 'Add Details',
              buttonColor: AppColors.yellow,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PatientAddDetialsScreen(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 15,
            ),
            MyButton(
              text: 'View Details',
              buttonColor: AppColors.yellow,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
