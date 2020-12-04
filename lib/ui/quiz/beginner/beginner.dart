part of '../../uis.dart';

class Beginner extends StatefulWidget {
  @override
  _BeginnerState createState() => _BeginnerState();
}

class _BeginnerState extends State<Beginner> {
  // List dataSoalOk;

  // void dataSoal() {
  //   getSoalBegin().then((value) {
  //     setState(() {
  //       dataSoalOk = value;
  //     });
  //   });
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   dataSoal();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.green[600], Colors.green[200]],
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
                            fontSize: 30,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          'Beginner',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 15,
                            color: const Color(0x7cdbf1ff),
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
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                        child: Icon(Icons.arrow_back, color: Colors.white))
                  ],
                ),
              ),
              Container(
                  child: QuizView(
                image: Container(
                    child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe4Y7RZK-9d-38djq1QW_xlMJQqL4-weHJmA&usqp=CAU")),
                showCorrect: true,
                tagBackgroundColor: Colors.deepOrange,
                tagColor: Colors.black,
                questionTag: "Question: 1",
                answerColor: Colors.white,
                answerBackgroundColor: Color.fromARGB(255, 255, 0, 111),
                questionColor: Colors.white,
                backgroundColor: Color.fromARGB(255, 111, 0, 255),
                width: 300,
                height: 600,
                question: "Apa nama hp diatas?",
                rightAnswer: "oppo",
                wrongAnswers: ["Xiaomi", "Realme"],
                onRightAnswer: () => print("Benar"),
                onWrongAnswer: () => print("Salah")
              ))
            ],
          ),
        ),
      ),
    );
  }
}

// dataSoalOk == null
//                   ? Center(
//                       child: SpinKitThreeBounce(
//                       color: Colors.greenAccent,
//                     ))
//                   : Container(
//                       height: 550,
//                       padding: const EdgeInsets.only(left: 12),
//                       child: Swiper(
//                         itemCount: dataSoalOk.length,
//                         itemWidth: MediaQuery.of(context).size.width - 2 * 20,
//                         layout: SwiperLayout.STACK,
//                         pagination: SwiperPagination(
//                           builder: DotSwiperPaginationBuilder(
//                               activeSize: 20,
//                               space: 8,
//                               activeColor: Colors.green),
//                         ),
//                         itemBuilder: (context, i) {
//                           return InkWell(
//                             onTap: () {},
//                             child: Stack(
//                               children: <Widget>[
//                                 Column(
//                                   children: <Widget>[
//                                     SizedBox(height: 60),
//                                     Card(
//                                       elevation: 8,
//                                       shape: RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(32),
//                                       ),
//                                       color: Colors.white,
//                                       child: Padding(
//                                         padding: const EdgeInsets.only(
//                                             left: 30.0,
//                                             right: 30.0,
//                                             top: 40.0,
//                                             bottom: 50.0),
//                                         child: Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: <Widget>[
//                                             Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment
//                                                       .spaceBetween,
//                                               children: [
//                                                 Text(
//                                                   dataSoalOk[i].soal + ".",
//                                                   style: TextStyle(
//                                                     fontFamily: 'Avenir',
//                                                     fontSize: 44,
//                                                     color:
//                                                         const Color(0xff47455f),
//                                                     fontWeight: FontWeight.w900,
//                                                   ),
//                                                   textAlign: TextAlign.left,
//                                                 ),
//                                                 Image.asset(
//                                                     "assets/icon/${dataSoalOk[i].gambar}",
//                                                     height: 110),
//                                               ],
//                                             ),
//                                             SizedBox(height: 15),
//                                             Text(
//                                               dataSoalOk[i].bahasaIndo,
//                                               style: TextStyle(
//                                                 fontFamily: 'Avenir',
//                                                 fontSize: 23,
//                                                 color: Colors.black,
//                                                 fontWeight: FontWeight.w500,
//                                               ),
//                                               textAlign: TextAlign.left,
//                                             ),
//                                             SizedBox(height: 50),
//                                             Row(
//                                               children: [
//                                                 Text(
//                                                   'A.',
//                                                   style: TextStyle(
//                                                       fontFamily: 'Avenir',
//                                                       fontSize: 23,
//                                                       color: Colors.black,
//                                                       fontWeight:
//                                                           FontWeight.w500),
//                                                   textAlign: TextAlign.left,
//                                                 ),
//                                                 SizedBox(width: 5),
//                                                 Text(
//                                                   dataSoalOk[i].bahasaArab,
//                                                   style: TextStyle(
//                                                       fontFamily: 'Arabic',
//                                                       fontSize: 23,
//                                                       color: Colors.black,
//                                                       fontWeight:
//                                                           FontWeight.w500),
//                                                   textAlign: TextAlign.left,
//                                                 ),
//                                                 SizedBox(width: 10),
//                                                 Text(
//                                                   'B.',
//                                                   style: TextStyle(
//                                                       fontFamily: 'Avenir',
//                                                       fontSize: 23,
//                                                       color: Colors.black,
//                                                       fontWeight:
//                                                           FontWeight.w500),
//                                                   textAlign: TextAlign.left,
//                                                 ),
//                                                 SizedBox(width: 5),
//                                                 Text(
//                                                   'مِضْرَبٌ',
//                                                   style: TextStyle(
//                                                     fontFamily: 'Arabic',
//                                                     fontSize: 23,
//                                                     color: Colors.black,
//                                                     fontWeight: FontWeight.w500,
//                                                   ),
//                                                   textAlign: TextAlign.left,
//                                                 ),
//                                                 SizedBox(width: 40),
//                                                 Text(
//                                                   'C.',
//                                                   style: TextStyle(
//                                                       fontFamily: 'Avenir',
//                                                       fontSize: 23,
//                                                       color: Colors.black,
//                                                       fontWeight:
//                                                           FontWeight.w500),
//                                                   textAlign: TextAlign.left,
//                                                 ),
//                                                 SizedBox(width: 5),
//                                                 Text(
//                                                   'كُرَة السَلَّةُ',
//                                                   style: TextStyle(
//                                                     fontFamily: 'Arabic',
//                                                     fontSize: 23,
//                                                     color: Colors.black,
//                                                     fontWeight: FontWeight.w500,
//                                                   ),
//                                                   textAlign: TextAlign.left,
//                                                 ),
//                                               ],
//                                             ),
//                                             SizedBox(height: 40),
//                                             // Row(
//                                             //   mainAxisAlignment:
//                                             //       MainAxisAlignment.end,
//                                             //   children: <Widget>[
//                                             //     Text(
//                                             //       'SOAL SELANJUTNYA',
//                                             //       style: TextStyle(
//                                             //         fontFamily: 'Mont',
//                                             //         fontSize: 12,
//                                             //         color: Colors.black,
//                                             //         fontWeight: FontWeight.w500,
//                                             //       ),
//                                             //     ),
//                                             //     Icon(
//                                             //       Icons.arrow_forward,
//                                             //       color: Colors.black,
//                                             //     ),
//                                             //   ],
//                                             // ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 Positioned(
//                                   right: 100,
//                                   top: 65,
//                                   child: Text(
//                                     "Quiz",
//                                     style: TextStyle(
//                                       fontFamily: 'Avenir',
//                                       fontSize: 150,
//                                       color: Colors.black.withOpacity(0.08),
//                                       fontWeight: FontWeight.w900,
//                                     ),
//                                     textAlign: TextAlign.left,
//                                   ),
//                                 ),
//                                 Container(
//                                   height: 80,
//                                   margin: EdgeInsets.only(
//                                       top: 340, left: 20, right: 240),
//                                   alignment: Alignment.bottomRight,
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceEvenly,
//                                     children: [
//                                       RadioButtonGroup(
//                                         orientation: GroupedButtonsOrientation
//                                             .HORIZONTAL,
//                                         activeColor: Colors.indigo[900],
//                                         margin: EdgeInsets.only(bottom: 10),
//                                         labels: <String>["A", "B", "C"],
//                                         labelStyle: TextStyle(
//                                             fontFamily: 'Avenir',
//                                             fontWeight: FontWeight.w600,
//                                             color: Colors.black),
//                                       )
//                                     ],
//                                   ),
//                                 )
//                               ],
//                             ),
//                           );
//                         },
//                       ),
//                     ),
