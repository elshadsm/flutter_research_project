import 'package:flutter/material.dart';
import 'package:signature/signature.dart';
import 'SignatureDialog.dart';

class SignatureDialogState extends State<SignatureDialog> {
  final SignatureController signatureController = SignatureController(
    penStrokeWidth: 3,
    penColor: Colors.black,
    exportBackgroundColor: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Container(
        height: 300.0,
        width: 400.0,
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Row(children: [
            Icon(
              Icons.close,
              color: Colors.black,
            ),
            Expanded(
              child: const Text(
                'Sign order form',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Text(
              'Confirm',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: const Color(0xFFD49C60),
              ),
            ),
          ]),
          SizedBox(height: 16.0),
          Expanded(
            child: Column(children: [
              Signature(
                controller: signatureController,
                backgroundColor: Colors.blueGrey.shade50,
              )
            ]),
          ),
          SizedBox(height: 8.0),
          Divider(color: Colors.black),
          SizedBox(height: 8.0),
          const Text(
            'Elshad Seyidmammadov',
          ),
        ]),
      ),
    );
  }
}
