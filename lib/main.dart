import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bahasa_arab/homepage.dart';
import 'package:splashscreen/splashscreen.dart';

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

class _SphScreenState extends State<SphScreen> {
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


// import 'dart:async';
// import 'package:flutter/material.dart';

// void main() => runApp(SphScreen());

// class SphScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => FadeIn();
// }

// class FadeIn extends State<SphScreen> {
//   Timer _timer;
//   FlutterLogoStyle _logoStyle = FlutterLogoStyle.markOnly;
//   FadeIn() {
//     _timer = new Timer(const Duration(seconds: 5), () {
//       setState(() {
//         _logoStyle = FlutterLogoStyle.stacked;
//       });
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             child: new FlutterLogo(
//               size: 200.0,
//               style: _logoStyle,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'dart:math';

// import 'package:flutter/material.dart';

// void main() => runApp(AnimatedContainerApp());

// class AnimatedContainerApp extends StatefulWidget {
//   @override
//   _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
// }

// class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
//   double _width = 50;
//   double _height = 50;
//   Color _color = Colors.green;
//   BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: AnimatedContainer(
//             width: _width,
//             height: _height,
//             decoration: BoxDecoration(
//               color: _color,
//               borderRadius: _borderRadius,
//             ),
//             duration: Duration(seconds: 1),
//             curve: Curves.fastOutSlowIn,
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.play_arrow),
//           onPressed: () {
//             setState(() {
//               final random = Random();
//               _width = random.nextInt(300).toDouble();
//               _height = random.nextInt(300).toDouble();
//               _color = Color.fromRGBO(
//                 random.nextInt(256),
//                 random.nextInt(256),
//                 random.nextInt(256),
//                 1,
//               );
//               _borderRadius =
//                   BorderRadius.circular(random.nextInt(100).toDouble());
//             });
//           },
//         ),
//       ),
//     );
//   }
// }
