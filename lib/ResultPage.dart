import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynew_app/welcome.dart';
import 'welcome.dart';
import 'package:animated_widgets/animated_widgets.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ResultPage extends StatefulWidget {
  final String name, teacher, sec, date, summary, relate;
  ResultPage(
      {Key key,
      @required this.name,
      @required this.teacher,
      @required this.sec,
      @required this.summary,
      @required this.relate,
      @required this.date})
      : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState(
      name: name,
      teacher: teacher,
      sec: sec,
      date: date,
      relate: relate,
      summary: summary);
}

class _ResultPageState extends State<ResultPage> {
  String name, teacher, sec, date, summary, relate;
  _ResultPageState(
      {this.name,
      this.teacher,
      this.sec,
      this.summary,
      this.relate,
      this.date});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7339AA),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 140.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/screen.gif'),
                  alignment: Alignment.center,
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 370.0, bottom: 30.0),
                  child: TranslationAnimatedWidget(
                    duration: Duration(
                      seconds: 1,
                    ),
                    enabled: true,
                    values: [
                      Offset(0, 200), // disabled value value
                      Offset(0, 250), //intermediate value
                      Offset(0, 0) //enabled value
                    ],
                    child: Text(
                      'Thank You For Filling out our application !',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        'Restart The App',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WelcomeScreen(),
                        ),
                      );
                    }),
                SizedBox(
                  height: 25.0,
                ),
                GestureDetector(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 18),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      'Check your review ',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      Alert(
                        context: context,
                        type: AlertType.success,
                        title: "$name Book for $teacher Author",
                        desc:
                            "Your date is : $date .\nYour Section is : $sec .\n Your Summary is : $summary .\nThe Relationship is : $relate .\n",
                        buttons: [
                          DialogButton(
                            child: Text(
                              "COOL 💜",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () => Navigator.pop(context),
                            width: 120,
                          )
                        ],
                      ).show();
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
