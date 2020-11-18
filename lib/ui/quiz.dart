part of 'uis.dart';

class Quiz extends StatelessWidget {
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
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 40,
                  child: Stack(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: kDefaultPadding / 10),
                        child: Text(
                          "Programs",
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
                            margin: EdgeInsets.only(right: kDefaultPadding / 3),
                            height: 6,
                            color: Colors.amber.withOpacity(0.2),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          // SingleChildScrollView(
          //     scrollDirection: Axis.vertical,
          //     child:)
          Expanded(
              child: ListView(
            children: [
              InkWell(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 7),
                  margin: EdgeInsets.only(right: 100),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(60),
                          bottomRight: Radius.circular(60)),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          colors: [
                            Colors.green[600],
                            Colors.green[600],
                            Colors.green[200]
                          ])),
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/begconfirm');
                    },
                    subtitle: Text("Untuk 6-11 Tahun",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.white,
                            fontFamily: 'Mont')),
                    title: Text(
                      "Beginner",
                      style: TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                          fontFamily: 'Mont'),
                    ),
                    trailing: Icon(Icons.stars, size: 45),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                splashColor: Colors.brown[300],
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 7),
                  margin: EdgeInsets.only(right: 100),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(60),
                          bottomRight: Radius.circular(60)),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          colors: [
                            Colors.orange[400],
                            Colors.orange[400],
                            Colors.orange[200]
                          ])),
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/inconfirm');
                    },
                    subtitle: Text("Untuk 12-15 Tahun",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.white,
                            fontFamily: 'Mont')),
                    title: Text(
                      "Intermediate",
                      style: TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                          fontFamily: 'Mont'),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.stars, size: 45),
                        Icon(Icons.stars, size: 45)
                      ],
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                splashColor: Colors.brown[300],
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 7),
                  margin: EdgeInsets.only(right: 100),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(60),
                          bottomRight: Radius.circular(60)),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          colors: [
                            Colors.red[400],
                            Colors.red[400],
                            Colors.red[200]
                          ])),
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/inadvance');
                    },
                    subtitle: Text("16 Tahun ke Atas",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.white,
                            fontFamily: 'Mont')),
                    title: Text(
                      "Advance",
                      style: TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                          fontFamily: 'Mont'),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.stars, size: 45),
                        Icon(Icons.stars, size: 45),
                        Icon(Icons.stars, size: 45),
                      ],
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
