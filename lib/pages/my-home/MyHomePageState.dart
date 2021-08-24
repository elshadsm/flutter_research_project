import 'package:flutter/material.dart';
import 'package:flutter_research_project/pages/my-home/SignatureDialog.dart';
import 'MyHomePage.dart';

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.blue,
                side: BorderSide(width: 2, color: Colors.grey),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SignatureDialog();
                  },
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
