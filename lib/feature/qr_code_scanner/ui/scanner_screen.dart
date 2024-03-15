import 'dart:convert';

import 'package:client_vkr/app/di/init_di.dart';
import 'package:client_vkr/app/domain/entities/error_entity/error_entity.dart';
import 'package:client_vkr/app/ui/app_snack_bar.dart';
import 'package:client_vkr/feature/qr_code_scanner/domain/cubit/qr_code_cubit.dart';
import 'package:client_vkr/feature/qr_code_scanner/ui/scanner_result_screen.dart';
import 'package:client_vkr/feature/qr_code_scanner/ui/widgets/qr_scanner_overlay.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({super.key});

  @override
  State<ScannerScreen> createState() => _ScannerState();
}

class _ScannerState extends State<ScannerScreen> {
  MobileScannerController cameraController = MobileScannerController();
  bool _screenOpened = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black.withOpacity(0.5),
        appBar: AppBar(
          title: const Text("Сканер QR кода",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        ),
        body: Stack(
          children: [
            MobileScanner(
              controller: cameraController,
              onDetect: _foundBarcode,
            ),
            QRScannerOverlay(overlayColour: Colors.black.withOpacity(0.5))
          ],
        ));
  }

  void _foundBarcode(BarcodeCapture barcodeCapture) {
    if (!_screenOpened) {
      String bodyQrCode = json.encode(barcodeCapture.barcodes[0].displayValue);
      _screenOpened = true;
      String res = '';
      for (int i = 1; i < bodyQrCode.length - 1; i++) {
        res += bodyQrCode[i] == "'"
            ? '"'
            : bodyQrCode[i] == ':'
                ? ':'
                : bodyQrCode[i];
      }
      if (res.isEmpty) {
        AppSnackBar.showSnackBarWithError(
            context, ErrorEntity(message: 'ошибка сканирования кода'));
        Future.delayed(const Duration(seconds: 2))
            .then((value) => _screenOpened = false);
      }
      locator.get<QrCodeCubit>().toMarkStudent(res);
      Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ResultScreen()))
          .then((value) {
        _screenWasClosed();
        Navigator.pop(context);
      });
    }
  }

  void _screenWasClosed() {
    _screenOpened = false;
  }
}
