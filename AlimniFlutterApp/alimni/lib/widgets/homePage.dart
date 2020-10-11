import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: Container(),
          preferredSize: Size.fromHeight(30.0),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                child: Text(
                  "Hello Ayoub,",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              Divider(),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Lottie.asset("assets/images/university_student.json"),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                child: Card(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              top: 8.0,
                              left: 10.0,
                              // bottom: 2.0,
                            ),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Note : ",
                              style: TextStyle(fontSize: 17.0),
                            ),
                          ),
                          Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.lightbulb,
                                  color: Colors.yellow[600],
                                  size: 35.0,
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 4.0, vertical: 10.0),
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "The Alimni app is your English tutor. \n\n" +
                                          "See object -> Capture Photo -> Learn English. \n\n" +
                                          "Start by clicking the blue button below.",
                                      softWrap: true,
                                      style: TextStyle(
                                        color: Colors.grey[900],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.camera_outlined,
            color: Colors.white,
          ),
          tooltip: "Click to capture and learn",
        ),
      ),
    );
  }
}
