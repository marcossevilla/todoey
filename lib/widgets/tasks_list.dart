import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, data, child) => ListView.builder(
        itemCount: data.taskCount,
        itemBuilder: (context, i) {
          return TaskTile(
            title: data.tasks[i].name,
            isChecked: data.tasks[i].isDone,
          );
        },
      ),
    );
  }
}
