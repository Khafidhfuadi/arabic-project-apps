import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bahasa_arab/homepage.dart';
// import 'package:splashscreen/splashscreen.dart';
// import 'package:flutter/animation.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Splash Screen",
    home: SphScreen(),
  ));
}

class SphScreen extends StatefulWidget {
  @override
  _SphScreenState createState() => _SphScreenState();
}

class _SphScreenState extends State<SphScreen> with TickerProviderStateMixin {
  // AnimationController controller;
  // Animation<double> animation;

  // initState() {
  //   super.initState();
  //   controller = AnimationController(
  //       duration: const Duration(milliseconds: 1000), vsync: this);
  //   animation =
  //       CurvedAnimation(parent: controller, curve: Curves.easeInToLinear);
  //   controller.forward();
  // }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset("assets/image/launcher.png"),
        nextScreen: MyApp(),
        splashIconSize: 500,
        curve: Curves.fastOutSlowIn,
        splashTransition: SplashTransition.scaleTransition,
        duration: 400,
      ),
    );
  }
}

// floatingActionButton: RaisedButton(
//         elevation: 10,
//         padding: EdgeInsets.all(-20),
//         color: Colors.blueGrey[400],
//           onPressed: () {
//             Navigator.push(context, MaterialPageRoute(builder: (context) {
//               return MyApp();
//             }));
//           },
//           child: Icon(Icons.arrow_right, size: 60,),
//           shape: RoundedRectangleBorder(
//             borderRadius: new BorderRadius.circular(18.0),
//             side: BorderSide(color: Colors.black),
//           )),
