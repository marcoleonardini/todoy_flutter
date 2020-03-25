import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoy_flutter/model/task_provider.dart';
import 'package:todoy_flutter/screens/task_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskProvider>(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
