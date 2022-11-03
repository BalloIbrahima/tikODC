//widget acceuil
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MonAcceuil extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MonAcceuil();
} 

class _MonAcceuil extends State<MonAcceuil>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
          child:Column(children: const [
            Text('Acceuil')
          ],) 
        ),
    );
  }

}


