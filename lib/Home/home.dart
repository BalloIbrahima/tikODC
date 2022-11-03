import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tikodc/Home/Accueil.dart';
import 'package:tikodc/Home/monCompte.dart';
import 'package:tikodc/Home/notification.dart';
import 'package:tikodc/Home/now.dart';
import 'package:video_player/video_player.dart';

class Acceuilpage extends StatefulWidget {
  final String title;

  const Acceuilpage({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _acceuilpage();
}

class _acceuilpage extends State<Acceuilpage> {
  int IndexPage = 0;

  Widget Acceuil = MonAcceuil();
  Widget Compte = MonCompte();
  Widget Notification = MesNotification();
  Widget Now = MyNow();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: recupererPage(),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          currentIndex: IndexPage,
          unselectedItemColor: const Color.fromARGB(255, 98, 102, 98),
          onTap: (int index) => {changePage(index)},
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Acceuil',
                activeIcon: Icon(Icons.home)),
            const BottomNavigationBarItem(
                icon: Icon(Icons.flash_on_outlined),
                label: 'Now',
                activeIcon: Icon(Icons.flash_on_sharp)),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/tiktok_add.webp',
                  height: 20,
                ),
                label: ''),
            const BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.message),
                label: 'Boite de reception'),
            const BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.user), label: 'Profil')
          ]),
    );
  }


  Widget recupererPage() {
    if (IndexPage == 0) {
      return Acceuil;
    } else if (IndexPage == 1) {
      return Now;
    } else if (IndexPage == 3) {
      return Notification;
    } else {
      return Compte;
    }
  }


  void changePage(int index) {
    if (index == 2) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Acceuilpage(title: 'home')));
    }
    setState(() {
      IndexPage = index;
    });
  }
}
