//widget acceuil
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPublication extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewPublication();
}

class _NewPublication extends State<NewPublication> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
          child: Column(
        children: const [Text('New pub')],
      )),
    );
  }
}
