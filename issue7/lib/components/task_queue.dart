class TaskQueue {
  List<String> _tasks = [];

  void addTask(String task) {
    _tasks.add(task);
  }

  String? removeTask() {
    if (_tasks.isNotEmpty) {
      return _tasks.removeAt(0);
    }
    return null;
  }

  List<String> get tasks => _tasks;
}