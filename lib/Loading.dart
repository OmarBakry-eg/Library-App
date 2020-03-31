import 'package:flutter/material.dart';
import 'home.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 6),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF343434),
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 160.0),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('img/egg.gif'),
                alignment: Alignment.topCenter,
              ),
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 160.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Wrap(
                  children: <Widget>[
                    Text(
                      'Getting you online ',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                    TyperAnimatedTextKit(
                      text: ['...'],
                      speed: Duration(
                        milliseconds: 100,
                      ),
                      textStyle: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 60.0, left: 60.0, right: 60.0),
                  child: FAProgressBar(
                    animatedDuration: Duration(
                      seconds: 6,
                    ),
                    borderRadius: 35.0,
                    currentValue: 100,
                    displayText: '%',
                    progressColor: Color(0xFF00B3FF),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
