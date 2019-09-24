import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TextEditingController _taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Add Task',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 30.0,
              ),
            ),
            TextFormField(
              autofocus: true,
              controller: _taskController,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                errorText: validateTask(_taskController.text),
              ),
            ),
            SizedBox(height: 20.0),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              onPressed: () {
                Provider.of<TaskData>(context).addTask(_taskController.text);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  String validateTask(String value) {
    if (value.isEmpty) {
      return 'You\'re adding nothing!';
    } else {
      return null;
    }
  }
}
