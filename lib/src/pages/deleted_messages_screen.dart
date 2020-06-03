import 'package:flutter/material.dart';
import 'package:wamr_clone/src/models/message.dart';
import 'package:wamr_clone/src/pages/deleted_message.dart';

class DeletedMessagesScreen extends StatelessWidget {
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
       messageList..add(DeletedMessage(message))
                   ..add(Divider(endIndent: 10.0,));

    }
    return messageList;
  }
}

