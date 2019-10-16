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
          final task = data.tasks[i];
          return Dismissible(
            key: Key(task.name),
            child: TaskTile(
              title: task.name,
              isChecked: task.isDone,
              onPressed: (checkboxState) => data.updateTask(task),
            ),
            onDismissed: (direction) {
              data.deleteTask(task);
              Scaffold.of(context).showSnackBar(
                SnackBar(content: Text('Deleted.')),
              );
            },
          );
        },
      ),
    );
  }
}
