import 'package:flutter/material.dart';

class SignatureDialogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: Icon(
            Icons.close,
            color: Colors.black,
          ),
          onTap: () => Navigator.pop(context),
        ),
        Expanded(
          child: Text(
            'Sign order form',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        InkWell(
          child: Text(
            'Confirm',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Color(0xFFD49C60),
            ),
          ),
          onTap: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
