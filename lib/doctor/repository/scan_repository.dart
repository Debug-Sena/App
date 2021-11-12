import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanRepository {
  Future<bool?> scan() async {
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        '#5DEAF3', 'Cancle', true, ScanMode.QR);

    //todo: server call

    return true;
  }
}
