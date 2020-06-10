import 'dart:math';

import 'package:flutter/material.dart';

class StatusDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Random numberGen = Random();

    int number = numberGen.nextInt(500);

    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.black,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Hero(
                  tag: '1',
                  child: Image.asset(
                    'assets/images/unknown_user.png',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Icon(
                        Icons.file_download,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
