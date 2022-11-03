import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/forgetPassword.dart';

import 'Home/home.dart';

class loginPhonePage extends StatefulWidget {
  final String title;

  const loginPhonePage({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _loginPhonePage();
}

class _loginPhonePage extends State<loginPhonePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,

        // TODO: implement build
        child: Scaffold(
          appBar: AppBar(
            leading: const BackButton(color: Colors.black),
            title: Text(
              widget.title,
              style: const TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
            ),
            shadowColor: Colors.white,
            backgroundColor: Colors.white,
            bottom: const TabBar(labelColor: Colors.black, tabs: [
              Tab(
                text: 'Téléphone',
              ),
              Tab(
                text: 'Email',
              )
            ]),
          ),
          body: TabBarView(
            children: [
              Center(
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
                              'Numero de téléphone',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Veuillez saisir un numero de téléphone !';
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
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.black)),
                              child: const Text('Envoyer un code'),
                            ),
                          )
                        ],
                      ))
                    ]),
                  )
                ]),
              ),
              Center(
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
                              'Adresse mail',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Veuillez saisir une adresse mail !';
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
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const forgetPasswordPage(
                                              title: 'Réinitialiser')));
                                },
                                child: const Text("Mot de passe oublie"),
                              ),
                            )
                          ],
                        ),
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
                              child: const Text('Se connecter'),
                            ),
                          )
                        ],
                      ))
                    ]),
                  )
                ]),
              ),
            ],
          ),
        ),
      );
}

//otp
// class otpLogin extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _otpLogin();
// }
 
// class _otpLogin extends State<otpLogin>{

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }

// }
