import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_player/video_player.dart';

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
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.house), label: 'Acceuil'),
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.flask), label: 'Now'),
        BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.plus), label: ''),
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.message),
            label: 'Boite de reception'),
        // BottomNavigationBarItem(
        //     icon: FaIcon(FontAwesomeIcons.user), label: 'Profil')
      ]),
    );
  }
}
