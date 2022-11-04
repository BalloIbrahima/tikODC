import 'package:flutter/material.dart';
import 'package:tikodc/Home/home.dart';
import 'package:tikodc/Inscription/inscription.dart';

class InscriptionPassword extends StatefulWidget {
  final String title;

  const InscriptionPassword({super.key, required this.title});
  @override
  State<StatefulWidget> createState() => _InscriptionPassword();
}

class _InscriptionPassword extends State<InscriptionPassword> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            margin: const EdgeInsets.only(top: 30),
            child: Column(children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Row(
                  children: const [
                    Text(
                      'Pseudo',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez saisir un pseudo !';
                  }
                  return null;
                },
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Mot de passe',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez saisir le mot de passe !';
                  }
                  return null;
                },
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Confirmation du mot de passe',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez resaisir le mot de passe !';
                  }
                  return null;
                },
              ),
              SizedBox(
                  child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    margin: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const Acceuilpage(title: 'home')));
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black)),
                      child: const Text('Inscription'),
                    ),
                  )
                ],
              )),
              SizedBox(
                  child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    margin: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const inscriptionPage(title: 'inscription')));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 218, 25, 25))),
                      child: const Text('Annuler'),
                    ),
                  )
                ],
              ))
            ]),
          )
        ]),
      ),
    );
  }
}
