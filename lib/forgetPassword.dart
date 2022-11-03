import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class forgetPasswordPage extends StatefulWidget {
  final String title;

  const forgetPasswordPage({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _forgetPasswordPage();
}

class _forgetPasswordPage extends State<forgetPasswordPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text(
                        'Vous allez recevoir un code \npour réinitialiser votre mot de \npasse.',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Row(
                  children: const [
                    Text(
                      'Adresse email',
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
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 218, 25, 25))),
                      child: const Text('Réinitialiser'),
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
