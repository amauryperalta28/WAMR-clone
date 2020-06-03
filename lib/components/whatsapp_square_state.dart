import 'package:flutter/material.dart';

class WhatsAppSquareState extends StatelessWidget {
  const WhatsAppSquareState({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(width: 150),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green, width: 3.0),
      ),
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      child: Image.asset(
        'assets/images/unknown_user.png',
        fit: BoxFit.cover,
      ),
    );
  }
}