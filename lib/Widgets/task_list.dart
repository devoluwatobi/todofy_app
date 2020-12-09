import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todofy_app/Models/task_data.dart';
import 'package:todofy_app/Widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      var tasks = taskData.tasks;
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkBoxCallBack: (checkBoxState) {
              setState(() {
                tasks[index].toggleDone();
              });
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
