import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 75.0, 15.0, 10.0),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "STATISTICS",
              style: TextStyle(
                color: Colors.cyan[200],
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 40.0)),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "POWER GENERATED",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10.0)),
                  Container(
                    height: height / 2.5,
                    color: Colors.grey,
                    child: Center(
                      child: Text(
                        "GRAPH",
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 28.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 50.0)),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "FACTORS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10.0)),
                  Container(
                    height: height / 2.5,
                    color: Colors.grey,
                    child: Center(
                      child: Text(
                        "FACTORS",
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 28.0,
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
    );
  }
}
