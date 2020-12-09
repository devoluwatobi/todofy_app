import 'package:flutter/foundation.dart';

import 'task.dart';

class TaskData with ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Wake Up'),
    Task(name: 'Brush Teeth'),
    Task(name: 'Take Bath'),
  ];

  void addNewTask(Task newTask) {
    tasks.add(newTask);
    notifyListeners();
  }

  get taskCount {
    return tasks.length;
  }
}
