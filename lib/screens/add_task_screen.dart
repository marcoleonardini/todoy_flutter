import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoy_flutter/model/task_provider.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String newName = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      // height: 1900.0,
      constraints: BoxConstraints.expand(),
      // decoration: BoxDecoration(
      // borderRadius: BorderRadius.vertical(top: Radius.circular(20.0))),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 64.0, vertical: 16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Text',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 24.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newName = value;
                print(newName);
              },
            ),
            SizedBox(
              height: 16.0,
            ),
            FlatButton(
              textColor: Colors.white,
              child: Text('Add'),
              color: Colors.lightBlueAccent,
              onPressed: () {
                print(newName);
                Provider.of<TaskProvider>(context, listen: false)
                    .addTask(newName);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
