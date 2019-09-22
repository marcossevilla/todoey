import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Task'),
      leading: Checkbox(
        value: false,
        onChanged: (bool value) {},
      ),
    );
  }
}
