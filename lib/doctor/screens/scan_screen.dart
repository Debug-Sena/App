import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import '../../common/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../common/load_status.dart';
import '../scan_cubit/scan_cubit.dart';
import 'result_screen.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child:
          BlocConsumer<ScanCubit, ScanState>(listener: (context, state) async {
        if (state.loadStatus == LoadStatus.loaded && state.emailSent == true) {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => ResultScreen()));
          context.read<ScanCubit>().reset();
        }
      }, builder: (context, state) {
        if (state.loadStatus != LoadStatus.loading) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () async {
                    // String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
                    //     '#5DEAF3', 'Cancle', true, ScanMode.QR);

                    context.read<ScanCubit>().scan();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    alignment: Alignment.center,
                    child: Text(
                      'SCAN PATIENT',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.brown,
                    ),
                    width: double.maxFinite,
                  ),
                ),
              ],
            ),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      }),
    );
  }
}
