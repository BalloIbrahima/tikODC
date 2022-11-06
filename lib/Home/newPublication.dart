//widget acceuil
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewPublication extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewPublication();
}

class _NewPublication extends State<NewPublication> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: Container(
            margin: const EdgeInsets.only(top: 50),
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(bottom: 10),
            decoration: const BoxDecoration(
              //border:
              // Border(
              //     bottom: BorderSide(
              //   color: Colors.black12,
              //   width: 2,
              // )),
              color: Color.fromARGB(0, 255, 255, 255),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () async {
                    Navigator.pop(context);
                  },
                  child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: const FaIcon(
                        FontAwesomeIcons.xmark,
                        color: Colors.black,
                      )),
                ),
              ],
            ),
          )),
      body: Center(
          child: Column(
        children: [
          Container(
            child: Column(children: [Text('camera')]),
          ),
        ],
      )),
      bottomNavigationBar: _NewPubNavigation(),
    );
  }
}

Widget _NewPubNavigation() {
  List<String> elements = ["Camera", "Story", "MV"];
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        height: 50,
        color: Colors.black,
        child: PageView.builder(
            itemCount: elements.length,
            itemBuilder: (context, index) {
              return Container(
                height: 50,
                width: 50,
                child: Text(
                  elements[index],
                  style: TextStyle(color: Colors.white),
                ),
              );
            }),
      )
    ],
  );
}
