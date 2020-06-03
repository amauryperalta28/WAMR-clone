import 'package:flutter/material.dart';

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
          MonitoredApplications(),
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

class MonitoredApplications extends StatelessWidget {
  const MonitoredApplications({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SideBarMenuHeader('Aplicaciones monitoreadas'),
          SideBarMenuItem('WhatsApp', Icon(Icons.chat)),
          SideBarMenuItem('Gestionar', Icon(Icons.playlist_add)),
          Divider(),
          SideBarMenuHeader('Ayuda'),
          SideBarMenuItem('Reiniciar servicio', Icon(Icons.refresh)),
          SideBarMenuItem('Tengo un problema', Icon(Icons.help)),
          Divider(),
          SideBarMenuHeader('Acerca de'),
          SideBarMenuItem('Eliminar la publicidad', Icon(Icons.shopping_cart)),
          SideBarMenuItem('!Comparte esta aplicación!', Icon(Icons.share)),
          SideBarMenuItem('Acerca de', Icon(Icons.info)),
        ],
      ),
    );
  }
}

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
