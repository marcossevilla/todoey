import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function callback;

  TaskTile({this.isChecked, this.title, this.callback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      leading: Checkbox(
        activeColor: Theme.of(context).primaryColor,
        value: isChecked,
        onChanged: callback,
      ),
    );
  }
}
