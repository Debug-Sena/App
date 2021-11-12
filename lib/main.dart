import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_reports/auth/screens/auth_wrapper.dart';
import 'package:my_reports/doctor/scan_cubit/scan_cubit.dart';
import 'package:my_reports/doctor/screens/result_screen.dart';
import 'package:my_reports/doctor/screens/scan_screen.dart';
import 'package:my_reports/patient/patient_home/screens/patient_homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ScanCubit>(
          create: (_) => ScanCubit(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AuthWrapper(),
        // home: ResultScreen(),
      ),
    );
  }
}
