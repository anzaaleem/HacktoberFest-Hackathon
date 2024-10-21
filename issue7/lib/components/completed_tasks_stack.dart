class CompletedTasksStack {
  List<String> _completedTasks = [];

  void addCompletedTask(String task) {
    _completedTasks.add(task);
  }

  String? removeCompletedTask() {
    if (_completedTasks.isNotEmpty) {
      return _completedTasks.removeLast();
    }
    return null;
  }

  List<String> get completedTasks => _completedTasks;
}