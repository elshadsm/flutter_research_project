import 'package:flutter/material.dart';

import 'package:flutter_research_project/pages/my_home/signature_dialog_header.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';


class SignatureDialog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Container(
        height: 300.0,
        width: 400.0,
        padding: EdgeInsets.all(16.0),
        child: Column(children: [
          SignatureDialogHeader(),
          SizedBox(height: 16.0),
          Expanded(
            child: SfSignaturePad(
              minimumStrokeWidth: 1,
              maximumStrokeWidth: 4,
              strokeColor: Colors.blue,
              backgroundColor: Colors.blueGrey.shade50,
            ),
          ),
          SizedBox(height: 8.0),
          Divider(color: Colors.black),
          SizedBox(height: 8.0),
          const Text('Elshad Seyidmammadov'),
        ]),
      ),
    );
  }
}
