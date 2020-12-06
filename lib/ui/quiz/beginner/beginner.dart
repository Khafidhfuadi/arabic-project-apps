part of '../../uis.dart';

class Beginner extends StatefulWidget {
  @override
  _BeginnerState createState() => _BeginnerState();
}

class _BeginnerState extends State<Beginner> {
  List dataSoalOk;

  void dataSoal() {
    getSoalBegin().then((value) {
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
              dataSoalOk == null
                  ? Center(
                      child: SpinKitThreeBounce(
                      color: Colors.greenAccent,
                    ))
                  : Container(
                      height: 550,
                      padding: const EdgeInsets.only(left: 12),
                      child: Swiper(
                        itemCount: dataSoalOk.length,
                        itemWidth: MediaQuery.of(context).size.width - 2 * 20,
                        layout: SwiperLayout.STACK,
                        pagination: SwiperPagination(
                          builder: DotSwiperPaginationBuilder(
                              activeSize: 20,
                              space: 8,
                              activeColor: Colors.green),
                        ),
                        itemBuilder: (context, i) {
                          return InkWell(
                            onTap: () {},
                            child: Stack(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    SizedBox(height: 60),
                                    Container(
                                        child: QuizView(
                                            image: Container(
                                                child: Image.network(
                                                    "https://steamcdn-a.akamaihd.net/apps/csgo/images/brokenfang/control/control_04_usps.png",
                                                    height: 100)),
                                            showCorrect: true,
                                            tagColor: Colors.black,
                                            questionTag: "1",
                                            answerColor: Colors.white,
                                            answerBackgroundColor: Colors.green,
                                            questionColor: Colors.black,
                                            backgroundColor: Colors.white,
                                            width: 420,
                                            height: 450,
                                            question: dataSoalOk[i].bahasaIndo,
                                            rightAnswer:
                                                dataSoalOk[i].bahasaArab,
                                            wrongAnswers: ["Torque", "Fade"],
                                            onRightAnswer: () => showToast(
                                                'Benar',
                                                backgroundColor:
                                                    Colors.green[400],
                                                textStyle: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Avenir',
                                                    fontWeight:
                                                        FontWeight.w500),
                                                context: context,
                                                animation: StyledToastAnimation
                                                    .slideFromBottom,
                                                reverseAnimation: StyledToastAnimation
                                                    .slideToBottom,
                                                startOffset: Offset(0.0, 3.0),
                                                reverseEndOffset:
                                                    Offset(0.0, 3.0),
                                                position:
                                                    StyledToastPosition.bottom,
                                                duration: Duration(seconds: 4),
                                                //Animation duration   animDuration * 2 <= duration
                                                animDuration:
                                                    Duration(seconds: 1),
                                                curve: Curves.elasticOut,
                                                reverseCurve:
                                                    Curves.fastOutSlowIn),
                                            onWrongAnswer: () => showToast(
                                                'Salah',
                                                backgroundColor:
                                                    Colors.red[400],
                                                textStyle:
                                                    TextStyle(color: Colors.white, fontFamily: 'Avenir', fontWeight: FontWeight.w500),
                                                context: context,
                                                animation: StyledToastAnimation.slideFromBottom,
                                                reverseAnimation: StyledToastAnimation.slideToBottom,
                                                startOffset: Offset(0.0, 3.0),
                                                reverseEndOffset: Offset(0.0, 3.0),
                                                position: StyledToastPosition.bottom,
                                                duration: Duration(seconds: 4),
                                                //Animation duration   animDuration * 2 <= duration
                                                animDuration: Duration(seconds: 1),
                                                curve: Curves.elasticOut,
                                                reverseCurve: Curves.fastOutSlowIn)))
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
