import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void toggleCheckbox(bool? newValue) {
    setState(() {
      isChecked = newValue ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "This is task. ",
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(checkboxState: isChecked, toggleCheckbox: toggleCheckbox),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  TaskCheckBox({required this.checkboxState, required this.toggleCheckbox});

  final bool checkboxState;
  final ValueChanged<bool?> toggleCheckbox;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: toggleCheckbox,
    );
  }
}
