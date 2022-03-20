import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'myContainer.dart';

class TwoPlayers extends StatefulWidget {
  static const String id = 'twoPlayer_screen';
  @override
  _TwoPlayersState createState() => _TwoPlayersState();
}

class _TwoPlayersState extends State<TwoPlayers> {
  int x = 0;
  int y = 0;
  String playerone = 'Player one';
  String playertwo = 'Player Two';
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xFF111328),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: ListView(
                children: [
                  MyContainer(
                    controller: _controller1,
                    text: '$x',
                    hint: playerone,
                    onpressed1: () {
                      setState(() {
                        x = x + 1;
                      });
                    },
                    onpressed2: () {
                      setState(() {
                        x = x + 2;
                      });
                    },
                    onpressed3: () {
                      setState(() {
                        x = x + 3;
                      });
                    },
                    onpressed4: () {
                      setState(() {
                        x = x + 4;
                      });
                    },
                    onpressed5: () {
                      setState(() {
                        x = x + 5;
                      });
                    },
                    onpressed6: () {
                      setState(() {
                        x = x + 6;
                      });
                    },
                    onpressed7: () {
                      setState(() {
                        x = x + 7;
                      });
                    },
                    onpressedm: () {
                      setState(() {
                        x = x - 1;
                      });
                    },
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          _controller1.clear();
                          _controller2.clear();
                          x = 0;
                          y = 0;
                        });
                      },
                      child: Icon(
                        Icons.refresh,
                        size: 60.0,
                        color: Colors.white,
                      )),
                  SizedBox(
                    height: 5.0,
                  ),
                  MyContainer(
                    controller: _controller2,
                    text: '$y',
                    hint: playertwo,
                    onpressed1: () {
                      setState(() {
                        y = y + 1;
                      });
                    },
                    onpressed2: () {
                      setState(() {
                        y = y + 2;
                      });
                    },
                    onpressed3: () {
                      setState(() {
                        y = y + 3;
                      });
                    },
                    onpressed4: () {
                      setState(() {
                        y = y + 4;
                      });
                    },
                    onpressed5: () {
                      setState(() {
                        y = y + 5;
                      });
                    },
                    onpressed6: () {
                      setState(() {
                        y = y + 6;
                      });
                    },
                    onpressed7: () {
                      setState(() {
                        y = y + 7;
                      });
                    },
                    onpressedm: () {
                      setState(() {
                        y = y - 1;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
