import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:my_reports/common/app_colors.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () async {
                String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
                    '#5DEAF3', 'Cancle', true, ScanMode.QR);
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
      ),
    );
  }
}
