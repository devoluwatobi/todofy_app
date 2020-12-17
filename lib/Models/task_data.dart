import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'task.dart';

class TaskData with ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Wake Up'),
    Task(name: 'Brush Teeth'),
    Task(name: 'Take Bath'),
  ];

  void addNewTask(String newTaskTitle) {
    final newTask = Task(name: newTaskTitle);
    _tasks.add(newTask);
    notifyListeners();
  }

  get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
    // Future.delayed(const Duration(milliseconds: 800), () {
    //   _tasks.remove(task);
    //   notifyListeners();
    // });
  }
}
