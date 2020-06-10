import 'package:flutter/material.dart';

class WhatsAppSquareState extends StatelessWidget {
  final String tag;
 
  WhatsAppSquareState(this.tag);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'status-detail');
      },
      child: Container(
        constraints: BoxConstraints.expand(width: 150),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green, width: 3.0),
        ),
        margin: EdgeInsets.symmetric(horizontal: 2.0),
        child: Hero(
          tag: tag,
          child:
              Image.asset('assets/images/unknown_user.png', fit: BoxFit.cover),
        ),
      ),
    );
  }
}
