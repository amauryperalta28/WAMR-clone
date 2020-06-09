import 'package:flutter/material.dart';
import 'package:wamr_clone/src/pages/available_states_screen.dart';
import 'package:wamr_clone/src/pages/deleted_messages_screen.dart';
import 'package:wamr_clone/src/pages/mydrawer.dart';

class WamrMainScreen extends StatefulWidget {
  @override
  _WamrMainScreenState createState() => _WamrMainScreenState();
}

class _WamrMainScreenState extends State<WamrMainScreen> {
  bool circularStateMode = true;
  String headerTitle = 'Historial Notificaciones';

  @override
  Widget build(BuildContext context) {
    var textStyles = Theme.of(context).textTheme;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            headerTitle,
          ),
          actions: <Widget>[
            buildPopupMenu(),
          ],
          bottom: buildTabBar(),
        ),
        drawer: MyDrawer(textStyles: textStyles),
        body: TabBarView(
          children: <Widget>[
            DeletedMessagesScreen(),
            Icon(Icons.attachment),
            AvailableStatesScreen(),
          ],
        ),
      ),
    );
  }

  Widget buildPopupMenu() {
    return PopupMenuButton(
      icon: Icon(Icons.more_vert),
      itemBuilder: (BuildContext context) {
        List<String> values = ['Ayuda'];

        return values
            .map((e) => PopupMenuItem(
                  value: 1,
                  child:  ListTile(
                         title: Container(child: Text(e), margin: EdgeInsets.only(right: 54),),
                         onTap: (){
                           Navigator.pushNamed(context, 'help');
                         },),
                         
                  
                ))
            .toList();
      },
    );
  }

  TabBar buildTabBar() {
    final headers = {
      0: 'Historial Notificaciones',
      1: 'Multimedia eliminada',
      2: 'Descargar estado'
    };

    return TabBar(
      indicatorColor: Colors.white,
      onTap: (int index) {
        headerTitle = headers[index];
        setState(() {});
      },
      tabs: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.history),
        ),
        Icon(Icons.attachment),
        Icon(Icons.file_download),
      ],
    );
  }
}
