import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tikodc/inscription.dart';
import 'package:tikodc/loginPhoneEmail.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demonstration Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //initialisation();
  }

  void initialisation() async {
    print('ready in 3...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 2...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 1...');
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    //variables
    RoundedRectangleBorder btnBorder() {
      return const RoundedRectangleBorder(
          side: BorderSide(color: Colors.black, width: 2));
    }

    double LongueurEcran = MediaQuery.of(context).size.height;
    double LargeurEcran = MediaQuery.of(context).size.width;

    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: LongueurEcran * 0.3,
              color: Colors.blueGrey,
              width: LargeurEcran,
              //margin: const EdgeInsets.only(bottom: 2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/icon.png',
                  ),
                  const Text(
                    'Connecte-toi à TikODC',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.only(left: 30, right: 30),
              alignment: Alignment.topCenter,
              child: ListView(
                children: [
                  Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const loginPhonePage(title: 'Connexion')));
                      },
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      leading: const Icon(Icons.account_circle_outlined),
                      title: const Text('Utiliser un téléphone/e-mail'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      leading:
                          Icon(Icons.facebook_outlined, color: Colors.blue),
                      title: Text('Continuer avec Facebook'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      leading: FaIcon(FontAwesomeIcons.google),
                      title: Text('Continuer avec Google'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Color.fromARGB(255, 25, 17, 48), width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      leading: FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Color.fromARGB(255, 5, 3, 100),
                      ),
                      title: Text('Continuer avec Twitter'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      leading: FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Color.fromARGB(255, 190, 41, 41),
                      ),
                      title: Text('Continuer avec Intagram'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      'Vous n’avez pas de compte ?',
                      textAlign: TextAlign.center,
                      style: TextStyle(),
                    ),
                  ),
                  Card(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    color: const Color.fromARGB(255, 0, 0, 0),
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const inscriptionPage(title: 'Inscription')));
                      },
                      title: const Text(
                        'Inscription',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
