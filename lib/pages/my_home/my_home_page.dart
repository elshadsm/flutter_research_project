import 'package:flutter/material.dart';

import 'signature_dialog.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.blue,
                side: BorderSide(width: 2, color: Colors.grey),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => SignatureDialog(),
                );
              },
              child: Text('Open Signature Panel'),
            ),
          ],
        ),
      ),
    );
  }
}
