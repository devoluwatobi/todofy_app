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
}
