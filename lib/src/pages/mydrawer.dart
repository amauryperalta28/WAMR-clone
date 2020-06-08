import 'package:flutter/material.dart';
import 'package:wamr_clone/src/pages/monitored_applications.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
    @required this.textStyles,
  }) : super(key: key);

  final TextTheme textStyles;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          buildDrawerHeader(),
          MenuOptions(),
        ],
      ),
    );
  }

  DrawerHeader buildDrawerHeader() {
    return DrawerHeader(
      child: Container(
        margin: EdgeInsets.only(top: 55.0),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 9.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Color(0xFF2aa69a),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20.0)),
              child: Icon(
                Icons.chat,
                color: Colors.white,
                size: 40,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'WAMR',
                  style: textStyles.headline5,
                ),
                Text(
                  '0.10.2',
                  style: textStyles.headline4,
                )
              ],
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.80)),
    );
  }
}


