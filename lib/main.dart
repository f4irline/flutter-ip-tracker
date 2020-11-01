import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './src/widgets/home.dart';

void main() {
  runApp(IpTracker());
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
}

class IpTracker extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(body: Home()),
    );
  }
}
