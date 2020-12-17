import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack;
  final Function longPressCallBack;

  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.checkBoxCallBack,
      this.longPressCallBack});

  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: () {
          longPressCallBack();
        },
        title: Text(
          taskTitle,
          style: TextStyle(
            fontSize: 18,
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          value: isChecked,
          onChanged: (checkBoxState) {
            checkBoxCallBack();
          },
          activeColor: Colors.lightBlueAccent,
        ));
  }
}

// void changeCheckBoxState(bool newValue) {
//   setState(() {
//     isChecked = newValue;
//   });
// }
