import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Todo 1'),
      trailing: Checkbox(onChanged: (value) {}, value: false),
    );
  }
}