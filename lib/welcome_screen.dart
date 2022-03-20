import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:domino/twoPlayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'threePlayers.dart';
import 'twoPlayers.dart';
import 'fourPlayers.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 4),
      vsync: this,
    );
  }

//  'Welcome To Domino Calculator'
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF111328),
        body: SafeArea(
          child: ListView(
            //      mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 120, 40, 20),
                child: TypewriterAnimatedTextKit(
                  textStyle: TextStyle(
                      fontSize: 30.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[200]),
                  text: ['Domino Calculator'],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Center(
                child: Container(
                  height: 400.0,
                  width: 300.0,
                  child: new Stack(
                    children: <Widget>[
                      Card(
                        color: Color(0xFF1D1E33),
                        margin: const EdgeInsets.only(top: 40.0),
                        child: SizedBox(
                            height: 300.0,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 40.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  Text(
                                    'Number of Players',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      color: Colors.blueGrey[200],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                    width: 130.0,
                                    child: Divider(
                                      color: Colors.blueGrey[200],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, TwoPlayers.id);
                                          },
                                          child: Container(
                                            height: 35,
                                            width: 105,
                                            decoration: BoxDecoration(
                                                color: Colors.blueGrey[200],
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10.0),
                                                    topLeft:
                                                        Radius.circular(1.0),
                                                    bottomLeft:
                                                        Radius.circular(10.0),
                                                    bottomRight:
                                                        Radius.circular(1.0))),
                                            child: Center(
                                              child: Text(
                                                'Two Players',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black87,
                                                    fontSize: 16.0),
                                              ),
                                            ),
                                          )),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, ThreePlayers.id);
                                          },
                                          child: Container(
                                            height: 35,
                                            width: 105,
                                            decoration: BoxDecoration(
                                                color: Colors.blueGrey[200],
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10.0),
                                                    topLeft:
                                                        Radius.circular(1.0),
                                                    bottomLeft:
                                                        Radius.circular(10.0),
                                                    bottomRight:
                                                        Radius.circular(1.0))),
                                            child: Center(
                                              child: Text('Three Players',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black87,
                                                      fontSize: 16.0)),
                                            ),
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, FourPlayers.id);
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            color: Colors.blueGrey[200],
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10.0),
                                                topLeft: Radius.circular(3.0),
                                                bottomLeft:
                                                    Radius.circular(10.0),
                                                bottomRight:
                                                    Radius.circular(3.0))),
                                        child: Center(
                                          child: Text('Four Players',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black87,
                                                  fontSize: 16.0)),
                                        ),
                                      )),
                                ],
                              ),
                            )),
                      ),
                      Positioned(
                        top: .0,
                        left: .0,
                        right: .0,
                        child: Center(
                          child: CircleAvatar(
                            radius: 50.0,
                            child: CircleAvatar(
                                backgroundColor: Colors.blueGrey[200],
                                radius: 70.0,
                                backgroundImage:
                                    AssetImage('images/domino.png')),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
