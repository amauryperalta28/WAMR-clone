import 'package:flutter/material.dart';

class WhatsAppCircularState extends StatelessWidget {
  final String tag;
 
  WhatsAppCircularState(this.tag);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'status-detail');
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 2.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: Hero(
            tag: tag,
            child: Image.asset('assets/images/unknown_user.png',
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
