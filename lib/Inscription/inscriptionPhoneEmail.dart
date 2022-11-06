import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/Inscription/inscriptionPassword.dart';

import 'otpVerification.dart';

class inscriptionPhoneEmailPage extends StatefulWidget {
  final String title;

  const inscriptionPhoneEmailPage({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _inscriptionPhoneEmailPage();
}

class _inscriptionPhoneEmailPage extends State<inscriptionPhoneEmailPage> {
  var numeroTelephone = '';

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
                        onChanged: (value) {
                          numeroTelephone = value;
                        },
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
                              onPressed: () {
                                _openOtp(context, numeroTelephone);
                              },
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
                          child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 50.0,
                            margin: const EdgeInsets.only(top: 10),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => InscriptionPassword(
                                        title: 'inscription')));
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.black)),
                              child: const Text('Suivant'),
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

///otpVerification Modal
void _openOtp(context, numero) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: (context),
      builder: (BuildContext bc) {
        return Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height * .80,
            width: MediaQuery.of(context).size.width,
            child: OtpVerificationPage(numeroTelephone: numero),
          ),
        );
      });
}
