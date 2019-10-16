import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30.0,
            ),
          ),
          TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              }),
          FlatButton(
            child: Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            color: Colors.lightBlueAccent,
            onPressed: () {
              print(newTaskTitle);
            },
          ),
        ],
      ),
    );
  }
}
