import 'package:flutter/material.dart';

class DateSpecificScreen extends StatefulWidget {
  @override
  _DateSpecificScreenState createState() => _DateSpecificScreenState();
}

class _DateSpecificScreenState extends State<DateSpecificScreen> {
  DateTime date;
  TimeOfDay time;

  String finalDate, finalTime;

  Future<Null> datePicker() async {
    var result = await showDatePicker(
      context: context,
      initialDate: date == null ? DateTime.now() : date,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 3)),
    );
    if (result != null) {
      setState(() {
        this.date = result;
        this.finalDate = date.toString().substring(0, 10);
      });
    }
  }

  Future<Null> timePicker() async {
    var result = await showTimePicker(
        context: context, initialTime: time == null ? TimeOfDay.now() : time);
    if (result != null) {
      setState(() {
        this.time = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomPadding: false,
      body: Container(
        height: height,
        width: width,
        padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text(
                "ENTER THE",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan[200],
                ),
              ),
            ),
            Container(
              child: Text(
                "DETAILS",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan[200],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 40.0)),
            GestureDetector(
              child: Container(
                color: Color(0xFF424242),
                height: height / 2.5,
                width: width,
                child: Center(
                  child: Text(
                    date == null
                        ? "SELECT THE DATE\nFROM THE CALENDER"
                        : date.toString().substring(0, 10),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              onTap: () {
                datePicker();
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            GestureDetector(
              child: Container(
                height: height / 5,
                width: width,
                color: Color(0xFF424242),
                child: Center(
                  child: Text(
                    time == null ? "SELECT TIME" : time.format(context),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              onTap: () {
                timePicker();
              },
            ),
          ],
        ),
      ),
    );
  }
}
