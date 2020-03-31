import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ResultPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _formkey = GlobalKey<FormState>();
  String name;
  String teacher;
  String data;
  String sec;
  String summary;
  String relate;
  Future<bool> _onclicking() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Do you really want to exit the app?'),
        actions: <Widget>[
          FlatButton(
            child: Text('Yes'),
            onPressed: () => Navigator.pop(context, true),
          ),
          FlatButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text('No'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onclicking,
      child: Scaffold(
        body: Form(
          key: _formkey,
          child: SafeArea(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 2),
                  child: Container(
                    color: Color(0xFF424760),
                    height: 275.0,
                    width: double.infinity,
                    child: Center(
                      child: Container(
                        width: 280.0,
                        height: 120.0,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                                width: 7.0, color: Color(0xFFF6E8B4)),
                            left: BorderSide(
                                width: 7.0, color: Color(0xFFF6E8B4)),
                            right: BorderSide(
                                width: 7.0, color: Color(0xFFF6E8B4)),
                            bottom: BorderSide(
                                width: 7.0, color: Color(0xFFF6E8B4)),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '   English\nBook Review',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              wordSpacing: 2.0,
                              letterSpacing: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Color(0xFFF6E8B4),
                  thickness: 15.0,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: Text(
                    'Please Fill all :)',
                    style: TextStyle(
                        color: Color(0xFF424760),
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                        fontSize: 20.0),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Card(
                  color: Colors.red[50],
                  elevation: 5.0,
                  semanticContainer: true,
                  borderOnForeground: true,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: 15.0),
                            width: 200.0,
                            height: 100.0,
                            child: TextFormField(
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'fill the field';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                name = value;
                              },
                              decoration: InputDecoration(
                                labelText: 'Name',
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1.0),
                                ),
                                labelStyle: TextStyle(
                                  color: Color(0xFF424760),
                                  fontWeight: FontWeight.w900,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1.0),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20.0, right: 5.0),
                            width: 200.0,
                            height: 100.0,
                            child: TextFormField(
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'fill the field';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.datetime,
                              onChanged: (value) {
                                sec = value;
                              },
                              decoration: InputDecoration(
                                labelText: 'Section',
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1.0),
                                ),
                                labelStyle: TextStyle(
                                  color: Color(0xFF424760),
                                  fontWeight: FontWeight.w900,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF424760), width: 1.0),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: 15.0),
                            width: 200.0,
                            height: 100.0,
                            child: TextFormField(
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'fill the field';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                teacher = value;
                              },
                              decoration: InputDecoration(
                                labelText: 'Teacher',
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1.0),
                                ),
                                labelStyle: TextStyle(
                                  color: Color(0xFF424760),
                                  fontWeight: FontWeight.w900,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF424760), width: 1.0),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20.0, right: 5.0),
                            width: 200.0,
                            height: 100.0,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'fill the field';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                data = value;
                              },
                              decoration: InputDecoration(
                                labelText: 'Date',
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1.0),
                                ),
                                labelStyle: TextStyle(
                                  color: Color(0xFF424760),
                                  fontWeight: FontWeight.w900,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF424760), width: 1.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextFormField(
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'fill the field';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      summary = value;
                    },
                    maxLines: 10,
                    decoration: InputDecoration(
                      labelText: 'A BRIEF SUMMARY OF THE STORY',
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1.0),
                      ),
                      labelStyle: TextStyle(
                        color: Color(0xFF424760),
                        fontWeight: FontWeight.w900,
                      ),
                      hintText: ' Write Here!',
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 30.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF424760), width: 4.0),
                        borderRadius: BorderRadius.all(Radius.circular(2.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF424760), width: 4.0),
                        borderRadius: BorderRadius.all(Radius.circular(2.0)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, left: 20.0, right: 20.0, bottom: 40.0),
                  child: TextFormField(
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'fill the field';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      relate = value;
                    },
                    maxLines: 10,
                    decoration: InputDecoration(
                      labelText: 'HOW CAN YOU RELATE WITH THE PROTAGONIS ? ',
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1.0),
                      ),
                      labelStyle: TextStyle(
                        fontSize: 12.0,
                        color: Color(0xFF424760),
                        fontWeight: FontWeight.w900,
                      ),
                      hintText: ' Write Here!',
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 30.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF424760), width: 4.0),
                        borderRadius: BorderRadius.all(Radius.circular(2.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF424760), width: 4.0),
                        borderRadius: BorderRadius.all(Radius.circular(2.0)),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (_formkey.currentState.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultPage(
                                    name: name,
                                    teacher: teacher,
                                    relate: relate,
                                    summary: summary,
                                    date: data,
                                    sec: sec,
                                  )),
                        );
                      }
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60.0,
                    color: Color(0xFFF6E8B4),
                    child: Center(
                      child: Text(
                        'Click Here to Submit :)',
                        style: TextStyle(
                          color: Color(0xFF424760),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
