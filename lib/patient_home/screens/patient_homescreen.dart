import 'package:flutter/material.dart';
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
              buttonColor: Colors.yellow,
              onPressed: () {},
            ),
            SizedBox(
              height: 15,
            ),
            MyButton(
              text: 'View Details',
              buttonColor: Colors.yellow,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
