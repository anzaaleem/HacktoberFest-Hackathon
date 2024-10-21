import 'package:flutter/material.dart';
import 'package:issue7/components/completed_tasks_stack.dart';
import 'package:issue7/components/task_queue.dart';

class HomeScreen extends StatelessWidget {
  final TaskQueue taskQueue;
  final CompletedTasksStack completedTasksStack;
  final TextEditingController _controller = TextEditingController();

  HomeScreen({required this.taskQueue, required this.completedTasksStack});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Homework Manager')),
      body: Column(
        children: [
          TextField(controller: _controller),
          ElevatedButton(
            onPressed: () {
              taskQueue.addTask(_controller.text);
              _controller.clear();
            },
            child: Text('Add Task'),
          ),
        ],
      ),
    );
  }
}