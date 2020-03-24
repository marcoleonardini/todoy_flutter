import 'package:flutter/material.dart';
import 'package:todoy_flutter/model/task.dart';
import 'package:todoy_flutter/widgets/tasks_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  TaskList({this.tasks});

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
            title: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallback: (bool check) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
    );
  }
}
