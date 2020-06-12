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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          children: <Widget>[
            buildAvailableStates(),
            buildDownloadedMedia(),
          ],
        ),
      ),
    );
  }

  Widget buildAvailableStates() {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: buildAvailableStatesHeader(),
          ),
          Container(
            height: circularStateMode ? 80 : 200.0,
            padding: EdgeInsets.only(bottom: 5.0),
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

  Widget buildAvailableStatesHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Estados disponibles',
          style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.6)),
        ),
        IconButton(
          icon: Icon(Icons.swap_vert),
          onPressed: () {
            circularStateMode = !circularStateMode;
            setState(() {});
          },
        ),
      ],
    );
  }

  Widget buildDownloadedMediaHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Descargado',
          style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.6)),
        ),
      ],
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

  Widget buildDownloadedMedia() {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: buildDownloadedMediaHeader(),
            ),
            Wrap(
              alignment: WrapAlignment.spaceAround,

              children: <Widget>[
                DownloadedMedia('https://images.unsplash.com/photo-1587613753310-0ba642887227?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2134&q=80'),
                DownloadedMedia('https://images.unsplash.com/photo-1587613753310-0ba642887227?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2134&q=80'),
                DownloadedMedia('https://images.unsplash.com/photo-1587613753310-0ba642887227?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2134&q=80'),
                DownloadedMedia('https://images.unsplash.com/photo-1587613753310-0ba642887227?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2134&q=80'),
                DownloadedMedia('https://images.unsplash.com/photo-1587613753310-0ba642887227?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2134&q=80'),
                DownloadedMedia('https://images.unsplash.com/photo-1587613753310-0ba642887227?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2134&q=80'),
                DownloadedMedia('https://images.unsplash.com/photo-1587613753310-0ba642887227?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2134&q=80'),
                DownloadedMedia('https://images.unsplash.com/photo-1587613753310-0ba642887227?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2134&q=80'),
                DownloadedMedia('https://images.unsplash.com/photo-1587613753310-0ba642887227?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2134&q=80'),
                DownloadedMedia('https://images.unsplash.com/photo-1587613753310-0ba642887227?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2134&q=80'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DownloadedMedia extends StatelessWidget {
  final String url;

  DownloadedMedia(this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 180.0,
        width: 130.0,
        padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
        child: Container(
          child: Image.network(
            url,
            fit: BoxFit.cover,
          ),
        ));
  }
}
