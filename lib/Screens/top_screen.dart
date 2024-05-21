import 'package:flutter/material.dart';

class TopScreen extends StatefulWidget {
  @override
  _TopScreenState createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  int _achievementCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7F7FCA),
      appBar: AppBar(
        title: Text('Top'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  Icons.emoji_events,
                  size: _achievementCount < 10 ? 150 : 100,
                  color: Colors.amber,
                ),
                Positioned(
                  bottom: 5,
                  child: Text(
                    _achievementCount < 100 ? _achievementCount.toString() : '+',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _achievementCount++;
                });
              },
              child: Text('Unlock Achievement'),
            ),
          ],
        ),
      ),
    );
  }
}
