import 'package:flutter/material.dart';

class SideBarMenuHeader extends StatelessWidget {
  final String headerText;

  SideBarMenuHeader(this.headerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Text(
        headerText,
        style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade700),
      ),
    );
  }
}