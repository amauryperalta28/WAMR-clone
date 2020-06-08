import 'package:flutter/material.dart';
import 'package:wamr_clone/components/side_bar_menu_header.dart';
import 'package:wamr_clone/components/side_bar_menu_item.dart';

class MenuOptions extends StatelessWidget {
  const MenuOptions({
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