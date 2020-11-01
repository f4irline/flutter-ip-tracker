import 'package:flutter/material.dart';
import './map.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildHomeScreen();
  }

  Widget _buildHomeScreen() {
    return Column(children: [
      _buildHeaderSection(),
      _buildMapSection(),
    ]);
  }

  Widget _buildHeaderSection() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("lib/assets/img/pattern-bg.png")),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'IP Address Tracker',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter IP address',
                  fillColor: Colors.white,
                  filled: true),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildMapSection() {
    return Expanded(flex: 2, child: LeafletMap());
  }
}
