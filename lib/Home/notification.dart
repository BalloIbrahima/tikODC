//widget acceuil
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MesNotification extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MesNotification();
}

class _MesNotification extends State<MesNotification> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
          child: Column(
        children: const [Text('Mes notifs')],
      )),
    );
  }
}
