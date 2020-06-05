import 'package:flutter/material.dart';
import 'dart:async';
import 'dateSpecificScreen.dart';

class DataTypeScreen extends StatefulWidget {
  @override
  _DataTypeScreenState createState() => _DataTypeScreenState();
}

class _DataTypeScreenState extends State<DataTypeScreen> {
  bool isLoading = true;

  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomPadding: false,
      body: isLoading
          ? Center(
              child: Container(
                child: Image.asset("images/loading.gif"),
              ),
            )
          : SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                height: height,
                width: width,
                padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "SELECT THE TYPE OF DATA",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan[200],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40.0),
                      child: FlatButton(
                        padding: EdgeInsets.fromLTRB(30.0, 8.0, 30.0, 8.0),
                        color: Colors.cyan[200],
                        //TODO: NAVIGATE TO NEXT SCREEN
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DateSpecificScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "DATE SPECIFIC",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: FlatButton(
                        padding: EdgeInsets.fromLTRB(30.0, 8.0, 30.0, 8.0),
                        color: Colors.cyan[200],
                        //TODO: NAVIGATE TO NEXT SCREEN
                        onPressed: () {},
                        child: Text(
                          "MONTH SPECIFIC",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 40.0),
                      color: Colors.black,
                      child: Image.asset(
                        "images/windmill.jpg",
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
