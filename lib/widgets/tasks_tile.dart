import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Todo 1'),
      trailing: TaskCheckBox(),
    );
  }
}

class TaskCheckBox extends StatefulWidget {
  @override
  _TaskCheckBoxState createState() => _TaskCheckBoxState();
}

class _TaskCheckBoxState extends State<TaskCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      onChanged: (newValue) {
        setState(() {
          isChecked = newValue;
        });
      },
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
    );
  }
}
