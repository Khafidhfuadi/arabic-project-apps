part of '../../uis.dart';

class Intermediate extends StatefulWidget {
  @override
  _IntermediateState createState() => _IntermediateState();
}

class _IntermediateState extends State<Intermediate> {
  List dataSoalOk;
  var counter = 0;

  void dataSoal() {
    getSoalInter().then((value) {
      setState(() {
        dataSoalOk = value;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    dataSoal();
  }

  // List qList = [
  //   Questions("1.The human body has four lungs.", false),
  //   Questions("2.Kelvin is a measure of temperature.", true),
  //   Questions("3.The Atlantic Ocean is the biggest ocean on Earth.", false),
  //   Questions("4.Sharks are mammals.", false),
  //   Questions("5.The human skeleton is made up of less than 100 bones.", false),
  //   Questions("6.Atomic bombs work by atomic fission.", true),
  //   Questions("7.Molecules are chemically bonded.", true),
  //   Questions("8.Spiders have six legs.", false),
  //   Questions("9.Mount Kilimanjaro is the tallest mountain in the world.", false),
  //   Questions("10.The study of plants is known as botany.", true),
  // ];

  void checkWin(bool userChoice, BuildContext context, i) {
    if (userChoice == dataSoalOk[counter].value) {
      print("correct");
      final snackbar = SnackBar(
        duration: Duration(milliseconds: 500),
        backgroundColor: Colors.green,
        content: Text("Benar!"),
      );
      Scaffold.of(context).showSnackBar(snackbar);
    } else {
      print("false");
      final snackbar = SnackBar(
        duration: Duration(milliseconds: 500),
        backgroundColor: Colors.red,
        content: Text("Salah!"),
      );
      Scaffold.of(context).showSnackBar(snackbar);
    }
    setState(() {
      if (i < 9) {
        counter = counter + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.orange[400], Colors.orange[200]],
          begin: Alignment.topCenter,
        )),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(left: 25.0, right: 5.0, top: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Quiz',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 40,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          'Intermediate',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 15,
                            color: Colors.white.withOpacity(0.7),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    RawMaterialButton(
                        onPressed: () {
                          Navigator.of(context)
                              .popUntil((route) => route.isFirst);
                        },
                        elevation: 0,
                        splashColor: Colors.orange,
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                        child: Icon(Icons.arrow_back, color: Colors.white))
                  ],
                ),
              ),
              dataSoalOk == null
                  ? Center(child: SpinKitThreeBounce(color: Colors.orange[600])) :
              Container(
                height: 550,
                padding: const EdgeInsets.only(left: 12),
                child: Swiper(
                  itemCount: dataSoalOk.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 25,
                  layout: SwiperLayout.STACK,
                  pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                        activeSize: 20,
                        space: 8,
                        activeColor: Colors.orange[600]),
                  ),
                  itemBuilder: (context, i,) {
                    return InkWell(
                      onTap: () {},
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(height: 60),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                color: Colors.grey[100],
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30.0,
                                      right: 30.0,
                                      top: 40.0,
                                      bottom: 55.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        dataSoalOk[counter].soal + ".",
                                        style: TextStyle(
                                          fontFamily: 'Avenir',
                                          fontSize: 44,
                                          color: const Color(0xff47455f),
                                          fontWeight: FontWeight.w900,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(height: 85),
                                      Center(
                                        child: Text(
                                            'Bahasa arabnya ',
                                            style: TextStyle(
                                                fontFamily: 'Mont',
                                                fontSize: 18,
                                                color: Colors.black,
                                                fontWeight:
                                                    FontWeight.bold),
                                                    textAlign: TextAlign.left,
                                          ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Center(
                                            child: Text(
                                              dataSoalOk[counter].bahasaIndo,
                                              style: TextStyle(
                                                  fontFamily: 'Mont',
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                  fontWeight:
                                                      FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                        ],
                                      ),
                                      Container(
                                          alignment: Alignment.center,
                                          margin: EdgeInsets.only(
                                              top: 10, left: 25, right: 35),
                                          padding: EdgeInsets.only(
                                              right: 20,
                                              left: 10,
                                              bottom: 5,
                                              top: 5),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.amber[900]),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                // datadariJSON[i]['bahasa_arab'],
                                                dataSoalOk[counter].bahasaArab,
                                                style: TextStyle(
                                                  fontFamily: 'Arabic',
                                                  fontSize: 25,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ],
                                          )),
                                      SizedBox(height: 95),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            right: 100,
                            top: 65,
                            child: Text(
                              "Quiz",
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 150,
                                color: Colors.black.withOpacity(0.08),
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Container(
                              height: 80,
                              margin: EdgeInsets.only(top: 350),
                              alignment: Alignment.center,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      RaisedButton(
                                        onPressed: () =>
                                            checkWin(true, context, i),
                                        color: Colors.orangeAccent,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Text(
                                          "True",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Avenir',
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      RaisedButton(
                                        onPressed: () =>
                                            checkWin(false, context, i),
                                        color: Colors.orangeAccent,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Text(
                                          "False",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Avenir',
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )))
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// String _valBoolean;
// List _listBoolean = ["True", "False"];

// Container(
//                                     height: 80,
//                                     margin: EdgeInsets.only(top: 350),
//                                     alignment: Alignment.center,
//                                     child: Container(
//                                       padding: EdgeInsets.symmetric(
//                                           horizontal: 14, vertical: 5),
//                                       decoration: BoxDecoration(
//                                           color: Colors.white,
//                                           borderRadius:
//                                               BorderRadius.circular(10)),
//                                       child: DropdownButton(
//                                         icon: Icon(Icons.arrow_drop_down),
//                                         iconSize: 35,
//                                         underline: SizedBox(),
//                                         hint: Text("True or False",
//                                             style: TextStyle(
//                                                 fontFamily: 'Avenir',
//                                                 fontWeight: FontWeight.w500)),
//                                         value: _valBoolean,
//                                         items: _listBoolean.map((value) {
//                                           return DropdownMenuItem(
//                                             child: Text(value,
//                                                 style: TextStyle(
//                                                     color: Colors.black,
//                                                     fontFamily: 'Avenir',
//                                                     fontWeight:
//                                                         FontWeight.w500)),
//                                             value: value,
//                                           );
//                                         }).toList(),
//                                         onChanged: (value) {
//                                           setState(() {
//                                             _valBoolean = value;
//                                           });
//                                         },
//                                       ),
//                                     ))
