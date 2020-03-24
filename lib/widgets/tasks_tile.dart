import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Todo 1',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        checkboxState: isChecked,
        onPressed: check,
      ),
    );
  }

  void check(bool value) {
    setState(() {
      isChecked = value;
    });
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkboxState;
  final Function onPressed;

  TaskCheckBox({this.checkboxState, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: (newValue) {
        print(newValue);
        onPressed(newValue);
      },
    );
  }
}
