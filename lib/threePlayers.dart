import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'myContainer.dart';

class ThreePlayers extends StatefulWidget {
  static const String id = 'threePlayer_screen';

  @override
  _ThreePlayersState createState() => _ThreePlayersState();
}

class _ThreePlayersState extends State<ThreePlayers> {
  int x = 0;
  int y = 0;
  int z = 0;
  String playerone = 'Player One';
  String playertwo = 'Player Two';
  String playerthree = 'Player Three';
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF111328),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(
                    child: MyContainer(
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
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: MyContainer(
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
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _controller1.clear();
                      _controller2.clear();
                      _controller3.clear();
                      x = 0;
                      y = 0;
                      z = 0;
                    });
                  },
                  child: Icon(
                    Icons.refresh,
                    size: 60.0,
                    color: Colors.white,
                  )),
              SizedBox(
                height: 10.0,
              ),
              MyContainer(
                controller: _controller3,
                text: '$z',
                hint: playerthree,
                onpressed1: () {
                  setState(() {
                    z = z + 1;
                  });
                },
                onpressed2: () {
                  setState(() {
                    z = z + 2;
                  });
                },
                onpressed3: () {
                  setState(() {
                    z = z + 3;
                  });
                },
                onpressed4: () {
                  setState(() {
                    z = z + 4;
                  });
                },
                onpressed5: () {
                  setState(() {
                    z = z + 5;
                  });
                },
                onpressed6: () {
                  setState(() {
                    z = z + 6;
                  });
                },
                onpressed7: () {
                  setState(() {
                    z = z + 7;
                  });
                },
                onpressedm: () {
                  setState(() {
                    z = z - 1;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
