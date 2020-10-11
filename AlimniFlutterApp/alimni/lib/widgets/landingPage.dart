import 'package:alimni/widgets/logIn.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

//The page the app first lands on
class LandingPage extends StatefulWidget {
  LandingPage({Key key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: Container(),
          preferredSize: Size.fromHeight(50.0),
        ),
        body: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  "Welcome to Alimni!",
                  style: TextStyle(fontSize: 25.0),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  width: MediaQuery.of(context).size.width,
                  height: 400.0,
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 360.0,
                      child: Lottie.asset("assets/images/camera_two.json"),
                    ),
                  ),
                ),
                Spacer(),
                FlatButton(
                  color: Colors.blue[300],
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LogInScreen()));
                  },
                  child: Text(
                    "See -> Capture -> Learn Engish  :-)",
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
