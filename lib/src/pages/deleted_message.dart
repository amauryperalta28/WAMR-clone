import 'package:flutter/material.dart';
import 'package:wamr_clone/src/models/message.dart';

class DeletedMessage extends StatelessWidget {
  final Message _message;

  DeletedMessage(this._message);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        _message.sender,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        _message.messageBody,
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
      leading: CircleAvatar(
        child: Image.asset('assets/images/unknown_user.png'),
      ),
      trailing: Text(
        _message.hour,
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}