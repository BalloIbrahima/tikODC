import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tikodc/Home/Accueil.dart';
import 'package:tikodc/Home/monCompte.dart';
import 'package:tikodc/Home/newPublication.dart';
import 'package:tikodc/Home/notification.dart';
import 'package:tikodc/Home/now.dart';

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
          selectedItemColor: Colors.white,
          unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
          onTap: (int index) => {changePage(index)},
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
                icon: Icon(Icons.house),
                label: 'Acceuil',
                activeIcon: FaIcon(FontAwesomeIcons.houseChimney)),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/flash-24.png',
                  height: 25,
                ),
                label: 'Now',
                activeIcon: const FaIcon(FontAwesomeIcons.boltLightning)),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/tiktok_add.webp',
                  height: 25,
                ),
                label: ''),
            const BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.message),
                activeIcon: FaIcon(FontAwesomeIcons.solidMessage),
                label: 'Boite de reception'),
            const BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.user),
                label: 'Profil',
                activeIcon: FaIcon(FontAwesomeIcons.solidUser))
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
    } else if (IndexPage == 4) {
      return Compte;
    } else {
      IndexPage = 0;
      return Acceuil;
    }
  }

  void changePage(int index) {
    if (index == 2) {
      _openCamera(context);
      // Navigator.of(context)
      //     .push(MaterialPageRoute(builder: (context) => NewPublication()));
    } else {
      setState(() {
        IndexPage = index;
      });
    }
  }
}

///appareil
void _openCamera(context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: (context),
      builder: (BuildContext bc) {
        return Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height * .90,
            width: MediaQuery.of(context).size.width,
            child: NewPublication(),
          ),
        );
      });
}
