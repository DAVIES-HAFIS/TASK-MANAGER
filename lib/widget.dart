import 'package:flutter/material.dart';
import 'package:custom_switch/custom_switch.dart';

class TaskCardWidget extends StatefulWidget {
  final String title;
  final String desc;

  TaskCardWidget({this.title, this.desc});

  @override
  _TaskCardWidgetState createState() => _TaskCardWidgetState();
}

class _TaskCardWidgetState extends State<TaskCardWidget> {

  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 32.0,
        horizontal: 24.0,
      ),
      margin: EdgeInsets.only(
        bottom: 20.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title ?? "(Unnamed Task)",
            style: TextStyle(
              color: Color(0xFF211551),
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Text(
                widget.desc ?? "No Description Added",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0xFF86829D),
                  height: 1.5,
                ),
              ),
                CustomSwitch(
                  activeColor: Colors.pinkAccent,
                  value: status,
                  onChanged: (value){
                    print("VALUE: $value");
                    setState(() {
                      status = value;
                    });
                  },
                ),
              ] ,
            ),
          )
        ],
      ),
    );
  }
}

class TodoWidget extends StatelessWidget {
  final String text;
  final bool isDone;

  TodoWidget({this.text, @required this.isDone});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 8.0,
      ),
      child: Row(
        children: [
          Container(

            width: 30.0,
            height: 30.0,
            margin: EdgeInsets.only(
              right: 12.0,
            ),
            decoration: BoxDecoration(
                color: isDone ? Color(0xFF7349FE) : Colors.transparent,
                borderRadius: BorderRadius.circular(6.0),
                border: isDone ? null : Border.all(
                    color: Color(0xFF86829D),
                    width: 1.5
                )
            ),
            child: Center(
              child: Icon(
                Icons.verified,
              ),
            ),
          ),
          Flexible(
            child: Text(
              text ?? "(Unnamed Todo)",
              style: TextStyle(
                color: isDone ? Color(0xFF211551) : Color(0xFF86829D),
                fontSize: 16.0,
                fontWeight: isDone ? FontWeight.bold : FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NoGlowBehaviour extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
