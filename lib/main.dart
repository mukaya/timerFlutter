import 'package:flutter/material.dart';
import './countdown_timer/countdown_timer_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CountDownTimerApp(),
    );
  }
}
