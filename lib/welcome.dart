import 'package:flutter/material.dart';
import 'Loading.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool showSpinner = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        opacity: 2.0,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/3.jpg'),
                  fit: BoxFit.fill,
                  colorFilter:
                      ColorFilter.mode(Colors.black, BlendMode.softLight),
                ),
              ),
            ),
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.touch_app,
                    color: Colors.white,
                    size: 100.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Text(
                      'LibraryApp',
                      style: TextStyle(
                        fontSize: 60.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Text(
                    'Getting ready to fill out application now and tell us what your review about book that you read in our library',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40.0),
                    child: GestureDetector(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 100, vertical: 18),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text(
                            'Go Now ! ',
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
                              builder: (context) => LoadingPage(),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
