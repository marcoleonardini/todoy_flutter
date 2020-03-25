import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoy_flutter/model/task_provider.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function checkboxCallback;
  final Function longPressDelete;

  TaskTile(
      {this.isChecked,
      this.title,
      this.checkboxCallback,
      this.longPressDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      onLongPress: longPressDelete,
    );
  }
}
