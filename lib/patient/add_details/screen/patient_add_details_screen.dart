import 'package:flutter/material.dart';

class PatientAddDetialsScreen extends StatelessWidget {
  const PatientAddDetialsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Hoo',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
