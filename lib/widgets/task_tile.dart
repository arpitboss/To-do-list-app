import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkBoxCallBack;
  final void Function()? longPressCallBack;

  TaskTile(
      {super.key,
      required this.isChecked,
      required this.taskTitle,
      required this.checkBoxCallBack,
      required this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    String time = DateFormat("HH:mm").format(dateTime);

    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      subtitle: Text(time),
      trailing: Checkbox(
        onChanged: checkBoxCallBack,
        activeColor: Colors.deepPurpleAccent[100],
        value: isChecked,
      ),
    );
  }
}

// class TaskCheckBox extends StatelessWidget {
//   final bool isChecked;
//   final Function(bool?)? checkBoxCallback;
//
//   const TaskCheckBox({required this.isChecked, required this.checkBoxCallback});
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }

// void toggleCheckboxState
//
// TaskCheckBox(
// isChecked: isChecked, checkBoxCallback: ),
