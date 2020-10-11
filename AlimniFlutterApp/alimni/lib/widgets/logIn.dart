import 'package:alimni/widgets/homePage.dart';
import 'package:flutter/material.dart';

import 'customTextField.dart';

class LogInScreen extends StatefulWidget {
  LogInScreen({Key key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController _emailAddressController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Align(
          alignment: Alignment.bottomRight,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
            width: MediaQuery.of(context).size.width,
            height: 60.0,
          ),
        ),
        preferredSize: Size.fromHeight(60.0),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.camera_outlined,
                    color: Colors.blue[400],
                    size: 45.0,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Welcome, Login",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Form(
              key: _formKey,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    CustomTextInputField(
                      controller: _emailAddressController,
                      labelText: "Email Address",
                      hintText: "you@email.com",
                      inputType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 22.5,
                    ),
                    CustomTextInputField(
                      controller: _passwordController,
                      labelText: "Password",
                      isObscure: true,
                      fieldValidator: (value) => value == null || value.isEmpty
                          ? "Password field required"
                          : null,
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            SizedBox(
              height: 32.0,
            ),
            Container(
              child: Center(
                child: ButtonTheme(
                  minWidth: 199.0,
                  height: 37.0,
                  child: FlatButton(
                    color: Colors.blue,
                    onPressed: () async {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
