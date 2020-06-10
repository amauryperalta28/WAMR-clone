import 'package:flutter/material.dart';
import 'package:wamr_clone/components/whatsapp_circular_state.dart';
import 'package:wamr_clone/components/whatsapp_square_state.dart';

class AvailableStatesScreen extends StatefulWidget {
  @override
  _AvailableStatesScreenState createState() => _AvailableStatesScreenState();
}

class _AvailableStatesScreenState extends State<AvailableStatesScreen> {
  bool circularStateMode = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Estados disponibles',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              IconButton(
                icon: Icon(Icons.swap_vert),
                onPressed: () {
                  circularStateMode = !circularStateMode;
                  setState(() {});
                },
              ),
            ],
          ),
          Container(
            height: circularStateMode ? 80 : 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: circularStateMode
                  ? getWhatsapStates()
                  : getWhatsapSquareStates(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getWhatsapStates() {
    return <Widget>[
      WhatsAppCircularState('1'),
      WhatsAppCircularState('2'),
      WhatsAppCircularState('3'),
      WhatsAppCircularState('4'),
      WhatsAppCircularState('5'),
      WhatsAppCircularState('6'),
      WhatsAppCircularState('7'),
      WhatsAppCircularState('8'),
      WhatsAppCircularState('9'),
      WhatsAppCircularState('10'),
    ];
  }

  List<Widget> getWhatsapSquareStates() {
    return <Widget>[
      WhatsAppSquareState('11'),
      WhatsAppSquareState('12'),
      WhatsAppSquareState('13'),
      WhatsAppSquareState('14'),
      WhatsAppSquareState('15'),
      WhatsAppSquareState('16'),
      WhatsAppSquareState('17'),
      WhatsAppSquareState('18'),
      WhatsAppSquareState('19'),
      WhatsAppSquareState('20'),
    ];
  }
}
