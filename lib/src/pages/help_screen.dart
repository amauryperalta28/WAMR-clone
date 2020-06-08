import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  List<HelpItem> _items = <HelpItem>[
    HelpItem(header: "Header", body: "Body"),
    HelpItem(header: "Header", body: "Body"),
    HelpItem(header: "Header", body: "Body"),
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
            children: _items.map((HelpItem e) {
              return ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return Text(e.header);
                },
                isExpanded: e.isExpanded,
                body: Text(e.body)
              );
            }),
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
