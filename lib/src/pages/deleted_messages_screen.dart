import 'package:flutter/material.dart';
import 'package:wamr_clone/components/deleted_message.dart';
import 'package:wamr_clone/src/models/message.dart';

class DeletedMessagesScreen extends StatefulWidget {
  @override
  _DeletedMessagesScreenState createState() => _DeletedMessagesScreenState();
}

class _DeletedMessagesScreenState extends State<DeletedMessagesScreen> {
  final List<Message> messages = [
    Message('Por la casa', 'Padre ricardo', '18:46'),
    Message('de acuerdo, ire creando el ticket,', 'Stalin CCPSD', '17:25'),
    Message('de acuerdo, ire creando el ticket,', 'Stalin CCPSD', '17:25'),
    Message('de acuerdo, ire creando el ticket,', 'Stalin CCPSD', '17:25'),
    Message('de acuerdo, ire creando el ticket,', 'Stalin CCPSD', '17:25'),
    Message('de acuerdo, ire creando el ticket,', 'Stalin CCPSD', '17:25'),
    Message('de acuerdo, ire creando el ticket,', 'Stalin CCPSD', '17:25'),
    Message('de acuerdo, ire creando el ticket,', 'Stalin CCPSD', '17:25'),
    Message('de acuerdo, ire creando el ticket,', 'Stalin CCPSD', '17:25'),
    Message('de acuerdo, ire creando el ticket,', 'Stalin CCPSD', '17:25'),
    Message('de acuerdo, ire creando el ticket,', 'Stalin CCPSD', '17:25'),
    Message('de acuerdo, ire creando el ticket,', 'Stalin CCPSD', '17:25'),
    Message('de acuerdo, ire creando el ticket,', 'Stalin CCPSD', '17:25'),
    Message('de acuerdo, ire creando el ticket,', 'Stalin CCPSD', '17:25'),
    Message('de acuerdo, ire creando el ticket,', 'Stalin CCPSD', '17:25'),
    Message('de acuerdo, ire creando el ticket,', 'Stalin CCPSD', '17:25'),
    Message('de acuerdo, ire creando el ticket,', 'Stalin CCPSD', '17:25'),
  ];

  @override
  Widget build(BuildContext context) {


    return ListView(
      children: getDeletedMessages(),
    );
  }

  List<Widget> getDeletedMessages() {
    List<Widget> messageList = [];

    for (var message in messages) {
      messageList
        ..add(DeletedMessage(message))
        ..add(Divider(
          endIndent: 10.0,
        ));
    }
    return messageList;
  }
}
