import 'package:flutter/material.dart';
import 'package:bahasa_arab/constants.dart';
import 'package:bahasa_arab/ui/uis.dart';
import 'package:hexcolor/hexcolor.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bahasa Arab',
        theme: ThemeData(
            scaffoldBackgroundColor: kBackgorundColor,
            primaryColor: HexColor("#000d3f"),
            textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
            visualDensity: VisualDensity.adaptivePlatformDensity),
        initialRoute: '/',
        routes: {
          '/': (context) => Screen(),
          '/begconfirm': (context) => Begconfirm(),
          '/beginner': (context) => Beginner(),
          '/inconfirm': (context) => Inconfirm(),
          '/intermediate': (context) => Intermediate(),
          '/inadvance': (context) => Inadvance(),
          '/advsession': (context) => Advsession(),
          '/advance': (context) => Advance(),
        });
  }
}
