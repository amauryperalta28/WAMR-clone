import 'package:flutter/material.dart';
import 'package:wamr_clone/src/pages/help_screen.dart';
import 'package:wamr_clone/src/pages/status_detail_page.dart';

import 'pages/wamr_main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Practice 1",
      // home: WamrMainScreen(),
      theme: ThemeData(
        primaryColor: Color(0xFF075e54),
        textTheme: TextTheme(
          headline5: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            color: Colors.white,
            fontSize: 12.0,

          )
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: WamrMainScreen.routeName,
      routes: {
        WamrMainScreen.routeName: (context)=> WamrMainScreen(),
        HelpScreen.routeName: (context) => HelpScreen(),
        StatusDetailPage.routeName: (context) => StatusDetailPage(),
      },
    );
  }
}
