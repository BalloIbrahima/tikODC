import 'package:flutter/material.dart';

class Acceuilpage extends StatefulWidget {
  final String title;

  const Acceuilpage({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _acceuilpage();
}

class _acceuilpage extends State<Acceuilpage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          children: [Container()],
        ),
      ),
    );
  }
}
