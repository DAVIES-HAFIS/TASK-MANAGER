import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:intl/intl.dart';
import 'package:task_app/clockview.dart';
import 'screens/homepage.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formattedTime = DateFormat('HH:mm').format(now);
    var formattedDate = DateFormat('EEE, d MMM').format(now);

    return Scaffold(
      backgroundColor: Color(0xFF202741),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                formattedTime,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                formattedDate,
                style: TextStyle(color: Colors.white70, fontSize: 20),
              ),
              Spacer(),
              ClockView(),
              SizedBox(
                height: 20,
              ),
              Text(
                'The key is not spending time but in investing it - STEPHEN R. COREY.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 18,
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(child: Center(
        child: Icon(Icons.touch_app_sharp, color: Colors.white),),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Homepage()),
          );
        },
        backgroundColor: Colors.pink,
      ),
    );
  }
}
