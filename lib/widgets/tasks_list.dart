import 'package:flutter/material.dart';
import 'package:todoy_flutter/model/task.dart';
import 'package:todoy_flutter/widgets/tasks_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Bread'),
    Task(name: 'Buy Licor'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
            title: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkboxCallback: (bool check) {
              setState(() {
                tasks[index].toggleDone();
              });
            });
      },
    );
  }
}
