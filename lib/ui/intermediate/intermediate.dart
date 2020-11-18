part of '../uis.dart';

class Intermediate extends StatefulWidget {
  @override
  _IntermediateState createState() => _IntermediateState();
}

class _IntermediateState extends State<Intermediate> {
  String _valBoolean;
  List _listBoolean = ["True", "False"];

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
              Container(
                height: 550,
                padding: const EdgeInsets.only(left: 12),
                child: Swiper(
                  itemCount: 5,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 25,
                  layout: SwiperLayout.STACK,
                  pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                        activeSize: 20,
                        space: 8,
                        activeColor: Colors.orange[600]),
                  ),
                  itemBuilder: (context, index) {
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
                                        "1.",
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
                                        child: RichText(
                                          text: TextSpan(
                                              text: '"INI RUMAH SAYA"',
                                              style: TextStyle(
                                                  fontFamily: 'Mont',
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: ' Bahasa Arabnya',
                                                  style: TextStyle(
                                                      fontFamily: 'Mont',
                                                      fontSize: 18,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                )
                                              ]),
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                                right: 20, left: 10, bottom: 5),
                                            decoration: BoxDecoration(
                                                color: Colors.amber[900]),
                                            child: Text(
                                              'هذا منزلي',
                                              style: TextStyle(
                                                fontFamily: 'Arabic',
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "(hadzaa manzilii)",
                                            style: TextStyle(
                                                fontFamily: 'Mont',
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 80),
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
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: DropdownButton(
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconSize: 35,
                                  underline: SizedBox(),
                                  hint: Text("True or False",
                                      style: TextStyle(
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.w500)),
                                  value: _valBoolean,
                                  items: _listBoolean.map((value) {
                                    return DropdownMenuItem(
                                      child: Text(value,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'Avenir',
                                              fontWeight: FontWeight.w500)),
                                      value: value,
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      _valBoolean = value;
                                    });
                                  },
                                ),
                              ))
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
