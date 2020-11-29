import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bahasa_arab/homepage.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Splash Screen",
    home: SpalshScreen(),
  ));
}

class SpalshScreen extends StatefulWidget {
  @override
  _SpalshScreenState createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: MyApp(),
      title: new Text('Welcome in Arabic appliocation',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0
      ),),
      image: Image.asset("assets/image/backapp.png"),
      backgroundColor: Colors.indigo[900],
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      loaderColor: Colors.red
    );
  }
}
