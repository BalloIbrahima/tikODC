//widget acceuil
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class MesNotification extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MesNotification();
}

class _MesNotification extends State<MesNotification> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Boîte de reception',
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
          child: Column(children: [
        Expanded(
            child: Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                alignment: Alignment.topCenter,
                child: ListView(children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {},
                      shape: const RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      leading: const FaIcon(
                        FontAwesomeIcons.circleUser,
                        size: 50,
                      ),
                      title: const Text(
                        'Mohamed34',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        'A aimé votre video',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {},
                      shape: const RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      leading: const FaIcon(
                        FontAwesomeIcons.circleUser,
                        size: 50,
                      ),
                      title: const Text(
                        'Mohamed34',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        'A aimé votre video',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {},
                      shape: const RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      leading: const FaIcon(
                        FontAwesomeIcons.circleUser,
                        size: 50,
                      ),
                      title: const Text(
                        'Mohamed34',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        'A aimé votre video',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {},
                      shape: const RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      leading: const FaIcon(
                        FontAwesomeIcons.circleUser,
                        size: 50,
                      ),
                      title: const Text(
                        'Mohamed34',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        'A aimé votre video',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {},
                      shape: const RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      leading: const FaIcon(
                        FontAwesomeIcons.circleUser,
                        size: 50,
                      ),
                      title: const Text(
                        'Mohamed34',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        'A aimé votre video',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {},
                      shape: const RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      leading: const FaIcon(
                        FontAwesomeIcons.circleUser,
                        size: 50,
                      ),
                      title: const Text(
                        'Mohamed34',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        'A aimé votre video',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {},
                      shape: const RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      leading: const FaIcon(
                        FontAwesomeIcons.circleUser,
                        size: 50,
                      ),
                      title: const Text(
                        'Mohamed34',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        'A aimé votre video',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {},
                      shape: const RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      leading: const FaIcon(
                        FontAwesomeIcons.circleUser,
                        size: 50,
                      ),
                      title: const Text(
                        'Mohamed34',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        'A aimé votre video',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {},
                      shape: const RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      leading: const FaIcon(
                        FontAwesomeIcons.circleUser,
                        size: 50,
                      ),
                      title: const Text(
                        'Mohamed34',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        'A aimé votre video',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {},
                      shape: const RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      leading: const FaIcon(
                        FontAwesomeIcons.circleUser,
                        size: 50,
                      ),
                      title: const Text(
                        'Mohamed34',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        'A aimé votre video',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ])))
      ])),
    );
  }
}
