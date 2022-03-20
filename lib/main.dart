import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'threePlayers.dart';
import 'twoPlayers.dart';
import 'fourPlayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      debugShowCheckedModeBanner: false,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        TwoPlayers.id: (context) => TwoPlayers(),
        ThreePlayers.id: (context) => ThreePlayers(),
        FourPlayers.id: (context) => FourPlayers(),
      },
    );
  }
}
