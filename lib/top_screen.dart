
// BUl page home-diki

import 'package:flutter/material.dart';

class TopScreen extends StatefulWidget {
  @override
  _TopScreenState createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7F7FCA),
      appBar: AppBar(
        title: Text('Top'),
      ),
      body: Center(
        child: Text('Top Screen Content'),
      ),
    );
  }
}
