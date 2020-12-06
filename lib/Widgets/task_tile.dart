import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack;

  TaskTile({this.isChecked, this.taskTitle, this.checkBoxCallBack});

  Widget build(BuildContext context) {
    return ListTile(
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
            checkBoxCallBack(checkBoxState);
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
