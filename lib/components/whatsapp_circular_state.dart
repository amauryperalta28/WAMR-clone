import 'package:flutter/material.dart';

class WhatsAppCircularState extends StatelessWidget {
  const WhatsAppCircularState({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Image.asset(
          'assets/images/unknown_user.png',
        ),
      ),
    );
  }
}