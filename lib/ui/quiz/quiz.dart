part of '../uis.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> with SingleTickerProviderStateMixin {
  AnimationController _animController;
  Animation<double> _animation;

  @override
  void initState() {
    _animController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animController);
    _animController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: kDefaultPadding * 1.2),
            height: size.height * 1 / 3,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 70, right: 40, bottom: 50),
                  height: size.height * 0.7 - 27,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(45)),
                      image: DecorationImage(
                          image: AssetImage("assets/image/quizbackground.png"),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      padding:
                          EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 50,
                                color: kPrimaryColor.withOpacity(0.23))
                          ]),
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                            hintText: "Search . . .",
                            hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontFamily: 'Mont'),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            suffixIcon: Icon(Icons.search)),
                      ),
                    ))
              ],
            ),
          ),
          FadeTransition(
            opacity: _animation,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 35,
                    child: Stack(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: kDefaultPadding / 10),
                          child: Text(
                            "Programs Quiz",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Avenir'),
                          ),
                        ),
                        Positioned(
                            bottom: 0,
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
                ],
              ),
            ),
          ),
          // SingleChildScrollView(
          //     scrollDirection: Axis.vertical,
          //     child:)
          ScrollConfiguration(
              behavior: QuizScroll(),
              child: Expanded(
                  child: SlideTransition(
                      position:
                          Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
                              .animate(_animController),
                      child: ListView(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 100),
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/begconfirm');
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(60),
                                      bottomRight: Radius.circular(60))),
                              padding: EdgeInsets.all(0.0),
                              child: Ink(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      colors: [
                                        Colors.green[600],
                                        Colors.green[600],
                                        Colors.green[200]
                                      ]),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(60),
                                      bottomRight: Radius.circular(60)),
                                ),
                                child: Container(
                                    constraints: const BoxConstraints(
                                        minWidth: 88.0,
                                        minHeight:
                                            100.0), // min sizes for Material buttons
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            margin: EdgeInsets.only(left: 20),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Beginner",
                                                  style: TextStyle(
                                                      fontSize: 23,
                                                      color: Colors.white,
                                                      fontFamily: 'Mont'),
                                                ),
                                                Text("Untuk 6-11 Tahun",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 13,
                                                        color: Colors.white,
                                                        fontFamily: 'Mont')),
                                              ],
                                            )),
                                        Container(
                                          margin: EdgeInsets.only(right: 20),
                                          child: Icon(Icons.stars, size: 45),
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            margin: EdgeInsets.only(right: 100),
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/inconfirm');
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(60),
                                      bottomRight: Radius.circular(60))),
                              padding: EdgeInsets.all(0.0),
                              child: Ink(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      colors: [
                                        Colors.orange[400],
                                        Colors.orange[400],
                                        Colors.orange[200]
                                      ]),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(60),
                                      bottomRight: Radius.circular(60)),
                                ),
                                child: Container(
                                    constraints: const BoxConstraints(
                                        minWidth: 88.0,
                                        minHeight:
                                            100.0), // min sizes for Material buttons
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            margin: EdgeInsets.only(left: 20),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Intermediate",
                                                  style: TextStyle(
                                                      fontSize: 23,
                                                      color: Colors.white,
                                                      fontFamily: 'Mont'),
                                                ),
                                                Text("Untuk 12-15 Tahun",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 13,
                                                        color: Colors.white,
                                                        fontFamily: 'Mont')),
                                              ],
                                            )),
                                        Container(
                                          margin: EdgeInsets.only(right: 20),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(Icons.stars, size: 45),
                                              Icon(Icons.stars, size: 45)
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            margin: EdgeInsets.only(right: 100),
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/inadvance');
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(60),
                                      bottomRight: Radius.circular(60))),
                              padding: EdgeInsets.all(0.0),
                              child: Ink(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      colors: [
                                        Colors.red[400],
                                        Colors.red[400],
                                        Colors.red[200]
                                      ]),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(60),
                                      bottomRight: Radius.circular(60)),
                                ),
                                child: Container(
                                    constraints: const BoxConstraints(
                                        minWidth: 88.0,
                                        minHeight:
                                            100.0), // min sizes for Material buttons
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            margin: EdgeInsets.only(left: 20),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Advance",
                                                  style: TextStyle(
                                                      fontSize: 23,
                                                      color: Colors.white,
                                                      fontFamily: 'Mont'),
                                                ),
                                                Text("16 Tahun ke Atas",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 13,
                                                        color: Colors.white,
                                                        fontFamily: 'Mont')),
                                              ],
                                            )),
                                        Container(
                                          margin: EdgeInsets.only(right: 20),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(Icons.stars, size: 45),
                                              Icon(Icons.stars, size: 45),
                                              Icon(Icons.stars, size: 45)
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ))))
        ],
      ),
    );
  }
}

class QuizScroll extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
