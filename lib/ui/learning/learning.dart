part of '../uis.dart';

class Learning extends StatefulWidget {
  @override
  _LearningState createState() => _LearningState();
}

class _LearningState extends State<Learning>
    with SingleTickerProviderStateMixin {
  AnimationController _animController;
  Animation<double> _animation;

  @override
  void initState() {
    _animController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    final Animation curve =
        CurvedAnimation(parent: _animController, curve: Curves.fastOutSlowIn);
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(curve);
    _animController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    height: size.height * 0.3 - 36,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/image/homescreenlearning.png"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 180),
                    height: 130,
                    child: Align(
                      alignment: Alignment.center,
                      child: Card(
                        elevation: 8.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Text(
                                "Start Learning Arabic",
                                style: TextStyle(
                                  fontSize: 19.0,
                                  fontFamily: "Avenir",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Text("404 NOT FOUND CONTENT",
                                  style: TextStyle(
                                      fontFamily: "Avenir",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 5 / 20),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    child: Stack(
                      children: [
                        FadeTransition(
                          opacity: _animation,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: kDefaultPadding / 10),
                            child: Text(
                              "Learning Arabic",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Avenir'),
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 5,
                            left: 0,
                            right: 0,
                            child: Container(
                              margin:
                                  EdgeInsets.only(right: kDefaultPadding / 3),
                              height: 6,
                              color: Colors.amber.withOpacity(0.2),
                            ))
                      ],
                    ),
                  ),
                  // Container(
                  //   margin: EdgeInsets.only(left: 125),
                  //   child: Row(
                  //     children: [
                  //       Text("Swipe",
                  //           style: TextStyle(
                  //               fontFamily: "Avenir",
                  //               fontSize: 15,
                  //               fontWeight: FontWeight.w500)),
                  //       Container(
                  //         height: 30,
                  //         width: 30,
                  //         decoration: BoxDecoration(
                  //             borderRadius:
                  //                 BorderRadius.all(Radius.circular(100))),
                  //         child: RawMaterialButton(
                  //           onPressed: () {},
                  //           child: Icon(Icons.arrow_forward),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
            ScrollConfiguration(
              behavior: LearningScroll(),
              child: Container(
                height: 300,
                child: SlideTransition(
                  position:
                      Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0))
                          .animate(_animController),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 40, left: 25),
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/beginlearn');
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(120),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              )),
                              padding: EdgeInsets.all(0.0),
                              child: Ink(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      colors: [
                                        HexColor("#089467"),
                                        HexColor("#77c4a9")
                                      ]),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(120),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: Container(
                                  constraints: const BoxConstraints(
                                      minWidth: 188.0,
                                      minHeight:
                                          100.0), // min sizes for Material buttons
                                  alignment: Alignment.center,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 105),
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Beginner",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 21,
                                                color: Colors.white,
                                                fontFamily: 'Avenir')),
                                        SizedBox(height: 10),
                                        Text("Untuk 6-11 Tahun",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontFamily: 'Avenir')),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 50,
                            right: 0,
                            top: -20,
                            child: Container(
                              child: Image.asset("assets/icon/beginlearn.png",
                                  height: 170, width: 170),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 40, left: 25),
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/interlearn');
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(120),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              )),
                              padding: EdgeInsets.all(0.0),
                              child: Ink(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      colors: [
                                        HexColor("#ffa312"),
                                        HexColor("#fec66d")
                                      ]),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(120),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: Container(
                                  constraints: const BoxConstraints(
                                      minWidth: 188.0,
                                      minHeight:
                                          100.0), // min sizes for Material buttons
                                  alignment: Alignment.center,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 108),
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Intermediate",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 19,
                                                color: Colors.white,
                                                fontFamily: 'Avenir')),
                                        SizedBox(height: 10),
                                        Text("Untuk 12-15 Tahun",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white,
                                                fontFamily: 'Avenir')),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 50,
                            right: 0,
                            top: -20,
                            child: Container(
                              child: Image.asset("assets/icon/intlearn.png",
                                  height: 170, width: 170),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(top: 40, left: 20, right: 25),
                            child: RaisedButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(120),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              )),
                              padding: EdgeInsets.all(0.0),
                              child: Ink(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      colors: [
                                        HexColor("#f91a1a"),
                                        HexColor("#ff6464")
                                      ]),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(120),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: Container(
                                  constraints: const BoxConstraints(
                                      minWidth: 188.0,
                                      minHeight:
                                          100.0), // min sizes for Material buttons
                                  alignment: Alignment.center,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 108),
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Advance",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 21,
                                                color: Colors.white,
                                                fontFamily: 'Avenir')),
                                        SizedBox(height: 7),
                                        Text("16 Tahun ke Atas",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontFamily: 'Avenir')),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 50,
                            right: 0,
                            top: -20,
                            child: Container(
                              child: Image.asset("assets/icon/advlearn.png",
                                  height: 170, width: 170),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LearningScroll extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
