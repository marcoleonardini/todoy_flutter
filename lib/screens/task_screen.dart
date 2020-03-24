import 'package:flutter/material.dart';
import 'package:todoy_flutter/model/task.dart';
import 'package:todoy_flutter/screens/add_task_screen.dart';

import '../widgets/tasks_list.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Bread'),
    Task(name: 'Buy Licor'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding:
                EdgeInsets.only(top: 60.0, left: 30.0, right: 30, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    fontSize: 48.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${tasks.length}  Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20.0),
                ),
              ),
              child: TaskList(
                tasks: tasks,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
          size: 36.0,
        ),
        onPressed: () {
          buildBottomSheet(context);
        },
      ),
    );
  }

  void buildBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => AddTaskScreen(
        addTask: addTask,
      ),
    );
  }

  void addTask(Task task) {
    setState(() {
      tasks.add(task);
    });
  }
}
