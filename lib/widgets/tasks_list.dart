import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoy_flutter/model/task_provider.dart';
import 'package:todoy_flutter/widgets/tasks_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              title: task.name,
              isChecked: task.isDone,
              checkboxCallback: (check) {
                taskData.checkUncheck(task);
              },
              longPressDelete: () {
                taskData.deleteTask(task);
              },
            );
          },
        );
      },
    );
  }
}
