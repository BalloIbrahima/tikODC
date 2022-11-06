//widget acceuil
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../post/autreInfos.dart';
import '../post/video.dart';

class MyNow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyNow();
}

class _MyNow extends State<MyNow> {
  List<Map> tikOdcItems = [
    {
      'couleur': Colors.blue,
      'titre': 'thour',
      'video': 'assets/videos/video_4.mp4',
      'infos': {
        'artiste': 'Young Pô',
        'like': '12.0K',
        'commentaires': 123,
        'partages': 78,
        'description': '#malien223 #malien #mali #bko #bkomusic'
      },
      'user': {
        'pseudo': 'KeitaConsulting',
        'nom': 'KEITA',
        'prenom': 'Boubacar'
      }
    },
    {
      'couleur': Colors.white,
      'titre': 'five',
      'video': 'assets/videos/video_5.mp4',
      'infos': {
        'artiste': 'Oude Mill',
        'like': '1.3M',
        'commentaires': '233.0K',
        'partages': '783.0K',
        'description':
            'famille woroli 😂 #CapCut #tiktokmali #tiktokmali🇲🇱223 #lefouworoli #mouctar6826 #comediamali🇲🇱 #bamako'
      },
      'user': {'pseudo': 'Aboubacar56', 'nom': 'Kone', 'prenom': 'ABoubacar'}
    },
    {
      'couleur': Colors.red,
      'titre': 'third',
      'video': 'assets/videos/video_3.mp4',
      'infos': {
        'artiste': 'Dr Keb',
        'like': '123.0K',
        'commentaires': '2.0K',
        'partages': '1.0K',
        'description':
            'Où sont les swagueurs du monde 🌍 ?@Gaibshone @mamaanane2 #lesfreressy #tiktokmali🇲🇱223'
      },
      'user': {'pseudo': 'Sekou234', 'nom': 'Kone', 'prenom': 'Sekou'}
    },
    {
      'couleur': Colors.green,
      'titre': 'first',
      'video': 'assets/videos/video_1.mp4',
      'infos': {
        'artiste': 'Iba One',
        'like': '24.3K',
        'commentaires': 299,
        'partages': 134,
        'description':
            'Insha’ALAH le MALI 🇲🇱 sera une icône ☝🏼🙏🏼. # #neBonnete d’indépendance à tous#'
      },
      'user': {'pseudo': 'ib233', 'nom': 'Ballo', 'prenom': 'Ibrahima'}
    },
    {
      'couleur': Colors.yellow,
      'titre': 'secaind',
      'video': 'assets/videos/video_2.mp4',
      'infos': {
        'artiste': 'Burna Boy',
        'like': '12.3K',
        'commentaires': 119,
        'partages': 34,
        'description':
            '22 Septembre a Markala #malienden223 #malienne223🇲🇱🥰❤️ #bamakomali🇲🇱 #its_inohzy #malienden223segou #segoukaden #malienne🇲🇱❤️❤️ #malienne🇲🇱'
      },
      'user': {'pseudo': 'Adama3', 'nom': 'Traore', 'prenom': 'Adama'}
    },
  ];

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 2,
      // TODO: implement build
      child: CarouselSlider(
          items: tikOdcItems.map((e) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: e['couleur'],
                    child: Stack(children: [
                      // const TabBar(
                      //     labelColor: Color.fromARGB(255, 255, 255, 255),
                      //     tabs: [
                      //       Tab(
                      //         text: 'Suivis',
                      //       ),
                      //       SizedBox(width: 20),
                      //       Tab(
                      //         text: 'Pour toi',
                      //       )
                      //     ]),
                      VideoWidget(
                        videoUrl: e['video'],
                      ),
                      Center(
                        child: Column(children: [
                          Container(
                            height: 100,
                            padding: const EdgeInsets.only(top: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Amis',
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  'Now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                      AutresInfosdelaPub(infos: e['infos'], user: e['user'])
                    ]));
              },
            );
          }).toList(),
          options: CarouselOptions(
              enableInfiniteScroll: false,
              height: double.infinity,
              viewportFraction: 1,
              scrollDirection: Axis.vertical)));
}
