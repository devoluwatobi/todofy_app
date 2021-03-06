import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todofy_app/Models/task_data.dart';
import 'package:todofy_app/Screens/task_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
