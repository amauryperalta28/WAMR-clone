import 'package:flutter/material.dart';

class SideBarMenuItem extends StatelessWidget {
  final String option;
  final Icon icon;

  SideBarMenuItem(this.option, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: icon,
          ),
          Text(
            option,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade800),
          )
        ],
      ),
    );
  }
}