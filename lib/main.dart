import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/task_screen.dart';

void main() => runApp(Todoey());

class Todoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp],
    );

    return MaterialApp(
      home: TaskScreen(),
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
