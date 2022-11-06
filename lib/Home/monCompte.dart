import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MonCompte extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MonCompte();
}

class _MonCompte extends State<MonCompte> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60.0),
            child: Container(
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
                children: const [
                  // InkWell(
                  //   onTap: () async {},
                  //   child: Container(
                  //       margin: const EdgeInsets.symmetric(horizontal: 10),
                  //       child: const Icon(
                  //         Icons.arrow_back_ios,
                  //         color: Colors.black,
                  //       )),
                  // ),
                  Text(
                    "iba_one",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                  // InkWell(
                  //   onTap: () async {},
                  //   child: Container(
                  //       margin: const EdgeInsets.symmetric(horizontal: 10),
                  //       child: const Icon(
                  //         Icons.logout_rounded,
                  //         color: Colors.black,
                  //       )),
                  // ),
                ],
              ),
            )),
        body: ListView(children: [
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 8, 7, 59),
                      borderRadius: BorderRadius.circular(75),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/iba.jpg'))),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '@iba_one',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 60,
                child: Column(
                  children: const [
                    Text(
                      '25',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'Suivis',
                      style: TextStyle(color: Colors.black54, fontSize: 13),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 60,
                child: Column(
                  children: const [
                    Text(
                      '25',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(color: Colors.black54, fontSize: 13),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 60,
                child: Column(
                  children: const [
                    Text(
                      '25',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "j'aime",
                      style: TextStyle(color: Colors.black54, fontSize: 13),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: 160,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(0, 255, 255, 255),
                ),
                child: const Text(
                  'Modifier le profil',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            width: 275,
            child: const Text(
              'Rappeur, artiste, auteur, compositeur et producteur malien.',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black12,
                    width: 1,
                  ),
                  // top: BorderSide(
                  //   color: Colors.black12,
                  //   width: 1,
                  // )
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                    ),
                    height: 40,
                    width: 40,
                    child: Icon(Icons.menu),
                  ),
                  const SizedBox(
                    height: 40,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.black38,
                    ),
                  )
                ],
              )),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                    width: (MediaQuery.of(context).size.width / 3) - 2,
                    height: 200,
                    color: Colors.pink,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.play_arrow_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          '365.5K',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                    width: (MediaQuery.of(context).size.width / 3) - 2,
                    height: 200,
                    color: Colors.purple,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.play_arrow_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          '365.5K',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                    width: (MediaQuery.of(context).size.width / 3) - 2,
                    height: 200,
                    color: Colors.blue,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.play_arrow_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          '365.5K',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                    width: (MediaQuery.of(context).size.width / 3) - 2,
                    height: 200,
                    color: Colors.pink,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.play_arrow_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          '365.5K',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                    width: (MediaQuery.of(context).size.width / 3) - 2,
                    height: 200,
                    color: Colors.purple,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.play_arrow_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          '365.5K',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                    width: (MediaQuery.of(context).size.width / 3) - 2,
                    height: 200,
                    color: Colors.blue,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.play_arrow_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          '365.5K',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                    width: (MediaQuery.of(context).size.width / 3) - 2,
                    height: 200,
                    color: Colors.pink,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.play_arrow_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          '365.5K',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                    width: (MediaQuery.of(context).size.width / 3) - 2,
                    height: 200,
                    color: Colors.purple,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.play_arrow_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          '365.5K',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                    width: (MediaQuery.of(context).size.width / 3) - 2,
                    height: 200,
                    color: Colors.blue,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.play_arrow_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          '365.5K',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                    width: (MediaQuery.of(context).size.width / 3) - 2,
                    height: 200,
                    color: Colors.pink,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.play_arrow_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          '365.5K',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                    width: (MediaQuery.of(context).size.width / 3) - 2,
                    height: 200,
                    color: Colors.purple,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.play_arrow_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          '365.5K',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                    width: (MediaQuery.of(context).size.width / 3) - 2,
                    height: 200,
                    color: Colors.blue,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.play_arrow_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          '365.5K',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ]));
  }
}
