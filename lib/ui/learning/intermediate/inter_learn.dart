part of '../../uis.dart';

class InterLearn extends StatefulWidget {
  @override
  _InterLearnState createState() => _InterLearnState();
}

class _InterLearnState extends State<InterLearn> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      backgroundColor: HexColor("#fab838"),
      body: ScrollConfiguration(
          behavior: InterScroll(),
          child: Stack(
            children: [
              PageView(
                controller: _controller,
                children: <Widget>[
                  TitleInter(),
                  VerbalNominal(),
                  KalimatVerbal()
                ],
              ),
              Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(left: 20, bottom: 40),
                  child: FloatingActionButton(
                    backgroundColor: HexColor("#fab838"),
                    foregroundColor: Colors.white,
                    splashColor: Colors.white38,
                    tooltip: "Back | To Learning Page",
                    onPressed: () {
                      Navigator.of(context).popUntil((route) => route.isFirst);
                    },
                    child: Icon(Icons.arrow_back),
                  ))
            ],
          )),
    );
  }
}

class TitleInter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 45, vertical: 55),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Image.asset(
                "assets/icon/learningarabicyellow.png",
                height: 270,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text("Intermediate",
                  style: TextStyle(
                    fontFamily: "Avenir",
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
                alignment: Alignment.center,
                child: Text("Learning Session",
                    style: TextStyle(
                      fontFamily: "Avenir",
                      fontSize: 20.2,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ))),
            SizedBox(height: 50),
            FlatButton(
                onPressed: () {},
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                    side: BorderSide(color: HexColor("#fab838"), width: 1.5)),
                child: Text("GET STARTED",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Avenir")))
          ],
        ));
  }
}

class VerbalNominal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 55),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: HexColor("#fab838"),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 20, top: 20),
                          child: Text("Kalimat Verbal &",
                              style: TextStyle(
                                  fontFamily: "Avenir",
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 20, bottom: 5),
                          child: Text("Kalimat Nominal",
                              style: TextStyle(
                                  fontFamily: "Avenir",
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 20, bottom: 20),
                            child: Text("Learning | Beginner",
                                style: TextStyle(
                                  fontFamily: "Avenir",
                                  fontSize: 13,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w500,
                                ))),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: Column(
                    children: [
                      Text(
                          "        Sebelum memulai belajar bahasa Arab modern, ketahui lebih dulu bahwa kalimat dalam bahasa Arab ada dua macam yaitu: a) Kalimat Verbal, dan b) Kalimat Nominal",
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.justify),
                      SizedBox(height: 15),
                      Text(
                          "        Kalimat Verbal adalah kalimat yang predikatnya berupa kata kerja (fi’il). Dalam bahasa Arab disebut jumlah fi’liyah. Unsur jumlah fi’liyah terdiri dari: a) fi’il (predikat) dan fa’il (subyek) atau b) fi’il, fa’il dan maf’ul (obyek).",
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.justify),
                      SizedBox(height: 15),
                      Text(
                          "        Kalimat nominal adalah kalimat yang subyek dan predikatnya berupa kata benda (isim). Kalimat nominal dalam bahasa Arab disebut Jumlah Ismiyah yaitu kalimat yang terdiri dari mubtada’ (subyek) dan khobar (predikat).",
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.justify),
                      Image.asset("assets/image/unsurjumlahfiil.png",
                          height: 205),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: FlatButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text("SWIPE",
                                style: TextStyle(
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87)),
                            SizedBox(width: 5),
                            Icon(
                              Icons.arrow_forward,
                              size: 21,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )),
        Container(
          alignment: Alignment.topRight,
          margin: EdgeInsets.only(top: 20),
          child: Image.asset(
            "assets/icon/learningarabiclogo.png",
            height: 150,
          ),
        ),
      ],
    );
  }
}

class KalimatVerbal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 55),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: HexColor("#fab838"),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 20, top: 20),
                          child: Text("Kalimat Verbal",
                              style: TextStyle(
                                  fontFamily: "Avenir",
                                  fontSize: 21,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 20, bottom: 20),
                            child: Text("Learning | Beginner",
                                style: TextStyle(
                                  fontFamily: "Avenir",
                                  fontSize: 13,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w500,
                                ))),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Bentuk Fi’il Ada Tiga:",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left),
                      SizedBox(height: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                                text: '1. ',
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 17),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Madhi',
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 17),
                                  )
                                ]),
                          ),
                          RichText(
                            text: TextSpan(
                                text: '2. ',
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 17),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Mudharik',
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 17),
                                  )
                                ]),
                          ),
                          RichText(
                            text: TextSpan(
                                text: '3. ',
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 17),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Amar',
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 17),
                                  )
                                ]),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text(
                          "Dari segi waktu dan bentuk (shighat), fi’il atau kata kerja dalam bahasa Arab ada tiga macam, yaitu:",
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: "Roboto",
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.justify),
                      SizedBox(height: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                                text: 'a) Fi’il mudharik ',
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 17),
                                children: <TextSpan>[
                                  TextSpan(
                                    text:
                                        'dipakai untuk menunjukkan waktu sekarang atau yang akan datang atau kegiatan sehari-hari.',
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 17),
                                  )
                                ]),
                          ),
                          SizedBox(height: 10),
                          RichText(
                            text: TextSpan(
                                text: 'b) Fi’il madhi ',
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 17),
                                children: <TextSpan>[
                                  TextSpan(
                                    text:
                                        'untuk menunjukkan masa yang sudah lalu.',
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 17),
                                  )
                                ]),
                          ),
                          SizedBox(height: 10),
                          RichText(
                            text: TextSpan(
                                text: 'c) Fi’il amar ',
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 17),
                                children: <TextSpan>[
                                  TextSpan(
                                    text:
                                        'dipakai untuk kalimat perintah (kalam amar)',
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 17),
                                  )
                                ]),
                          ),
                          SizedBox(height: 10),
                          Divider(
                            color: Colors.black,
                          ),
                          SizedBox(height: 10),
                          Text("Jenis Kalimat Verbal (Jumlah Fi'Iliyah)",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: "Roboto",
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.justify),
                          SizedBox(height: 15),
                          Text(
                              "Dari segi penggunaannya dalam berkomunikasi, jumlah fi’liyah terbagi menjadi lima macam yaitu:",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: "Roboto",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.justify),
                          SizedBox(height: 15),
                          RichText(
                            text: TextSpan(
                                text: 'a) Kalimat Positif ',
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 17),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '(kalam mutsbat)',
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 17),
                                  )
                                ]),
                          ),
                          SizedBox(height: 5),
                          RichText(
                            text: TextSpan(
                                text: 'b) Kalimat Tanya ',
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 17),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '(kalam istifham)',
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 17),
                                  )
                                ]),
                          ),
                          SizedBox(height: 5),
                          RichText(
                            text: TextSpan(
                                text: 'c) Kalimat Negatif/Menyangkal ',
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 17),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '(kalam nafi)',
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 17),
                                  )
                                ]),
                          ),
                          SizedBox(height: 5),
                          RichText(
                            text: TextSpan(
                                text: 'd) Kalimat Perintah ',
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 17),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '(kalam amar), dan',
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 17),
                                  )
                                ]),
                          ),
                          SizedBox(height: 5),
                          RichText(
                            text: TextSpan(
                                text: 'd) Kalimat Larangan ',
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 17),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '(kalam nahi)',
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 17),
                                  )
                                ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )),
        Container(
          alignment: Alignment.topRight,
          margin: EdgeInsets.only(top: 20),
          child: Image.asset(
            "assets/icon/learningarabiclogo.png",
            height: 150,
          ),
        ),
      ],
    );
  }
}

class InterScroll extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
