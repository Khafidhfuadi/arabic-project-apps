part of '../uis.dart';

class Learning extends StatefulWidget {
  @override
  _LearningState createState() => _LearningState();
}

class _LearningState extends State<Learning> {
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
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "Start Learning Arabic",
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(19.0),
                              child: Text("Content menyusul"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    child: Stack(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: kDefaultPadding / 10),
                          child: Text(
                            "Learning Arabic",
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
            SizedBox(height: 30),
            Container(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40, left: 40),
                        padding: EdgeInsets.all(30),
                        height: 300,
                        width: 190,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Colors.deepOrange[400],
                              Colors.deepOrangeAccent
                            ]),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(120),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            )),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              SizedBox(height: 140),
                              Text("Beginner",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: 'Mont')),
                              Text("Untuk 6-11 Tahun",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontFamily: 'Mont')),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 0,
                        child: Container(
                          child: Icon(Icons.stars, size: 100),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40, left: 40),
                        padding: EdgeInsets.all(30),
                        height: 300,
                        width: 190,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Colors.deepOrange[400],
                              Colors.deepOrangeAccent
                            ]),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(120),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            )),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              SizedBox(height: 140),
                              Text("Beginner",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: 'Mont')),
                              Text("Untuk 6-11 Tahun",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontFamily: 'Mont')),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 0,
                        child: Container(
                          child: Icon(Icons.stars, size: 100),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40, left: 40),
                        padding: EdgeInsets.all(30),
                        height: 300,
                        width: 190,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Colors.deepOrange[400],
                              Colors.deepOrangeAccent
                            ]),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(120),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            )),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              SizedBox(height: 140),
                              Text("Beginner",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: 'Mont')),
                              Text("Untuk 6-11 Tahun",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontFamily: 'Mont')),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 0,
                        child: Container(
                          child: Icon(Icons.stars, size: 100),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
