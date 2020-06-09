import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  List<HelpItem> _items = <HelpItem>[
    HelpItem(header: "¿Como se recuperan los mensajes de texto?", body: "Body"),
    HelpItem(header: "¿Como se recuperan los mensajes multimedia?", body: "Body"),
    HelpItem(header: "Los mensajes de texto no se estan recuperando", body: "Body"),
    HelpItem(header: "Los mensajes de multimedia no estan siendo recuperados", body: "Body"),
    HelpItem(header: "La aplicacion ha dejado de funcionar", body: "Body"),
    HelpItem(header: "No puedo ver mis mensajes enviados, solo los recibidos", body: "Body"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayuda'),
      ),
      body: ListView(
        children: <Widget>[
          ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                _items[index].isExpanded = !_items[index].isExpanded;
              });
            },
            children: _items.map((HelpItem item) {
              return ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text(
                      item.header,
                    ),
                  );
                },
                isExpanded: item.isExpanded,
                body: ListTile(
                  title: Text(
                    item.header,
                  ),
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

class HelpItem {
  bool isExpanded;
  final String header;
  final String body;

  HelpItem({this.isExpanded: false, this.header, this.body});
}
