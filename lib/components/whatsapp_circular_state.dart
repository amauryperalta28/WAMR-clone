import 'package:flutter/material.dart';
import 'package:wamr_clone/src/models/whatsapp_status.dart';
import 'package:wamr_clone/src/pages/status_detail_page.dart';

class WhatsAppCircularState extends StatelessWidget {
  final String tag;
  final String url =
      'https://images.unsplash.com/photo-1587613753310-0ba642887227?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2134&q=80';

  WhatsAppCircularState(this.tag);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          StatusDetailPage.routeName,
          arguments: WhatsAppStatus(tag, url),
        );
      },
      child: Container(
        width: 75.0,
        margin: EdgeInsets.symmetric(horizontal: 2.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50.0),
          child: Hero(
            tag: tag,
            child: Image.network(url, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
