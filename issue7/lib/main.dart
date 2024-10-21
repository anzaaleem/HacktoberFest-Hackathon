import 'package:flutter/material.dart';
import 'package:issue7/screens/home_screen.dart';
import 'components/task_queue.dart';
import 'components/completed_tasks_stack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TaskQueue taskQueue = TaskQueue();
  final CompletedTasksStack completedTasksStack = CompletedTasksStack();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(taskQueue: taskQueue, completedTasksStack: completedTasksStack),
    );
  }
}