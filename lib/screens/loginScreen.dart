import 'package:flutter/material.dart';
import 'dataTypeScreen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.black,
      body: Container(
        height: height,
        width: width,
        padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(
                color: Colors.cyan[200],
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100.0),
              child: TextFormField(
                validator: (value) {
                  if (value.isEmpty == true) {
                    return "Enter Username";
                  }
                },
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.cyan[200],
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  labelText: "USERNAME",
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  hintText: "Enter your username",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50.0),
              child: TextFormField(
                validator: (value) {
                  if (value.isEmpty == true) {
                    return "Enter password";
                  }
                },
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.vpn_key,
                    color: Colors.white,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.cyan[200],
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  labelText: "PASSWORD",
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  hintText: "Enter password",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
                obscureText: true,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 50.0, 10.0, 0.0),
              alignment: Alignment.centerRight,
              child: FlatButton(
                color: Colors.cyan[200],
                //TODO: ONPRESSED MOVE TO NEXT PAGE
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DataTypeScreen(),
                    ),
                  );
                },
                padding: EdgeInsets.fromLTRB(30.0, 8.0, 30.0, 8.0),
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 120.0),
              child: Text(
                "WANT TO JOIN?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: FlatButton(
                color: Colors.cyan[200],
                //TODO: ONPRESSED MOVE TO NEXT PAGE
                onPressed: () {},
                padding: EdgeInsets.fromLTRB(30.0, 8.0, 30.0, 8.0),
                child: Text(
                  "CLICK HERE",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
