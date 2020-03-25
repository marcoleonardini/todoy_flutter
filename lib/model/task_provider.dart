import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoy_flutter/model/task.dart';

class TaskProvider extends ChangeNotifier {
  List<Task> _list = [
    Task(name: 'first from provider'),
    Task(name: 'second from provider'),
  ];

  void addTask(String name) {
    print('----------' + name);
    _list.add(Task(name: name));
    notifyListeners();
  }

  void checkUncheck(Task task) {
    task.isDone = !task.isDone;
    notifyListeners();
  }

  void deleteTask(Task task) {
    _list.remove(task);
    notifyListeners();
  }

  int get taskCount => _list.length;

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_list);
}
