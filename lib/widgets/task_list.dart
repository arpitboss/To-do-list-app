import 'package:flutter/material.dart';
import 'package:to_do_list/models/Task_Data.dart';
import 'package:to_do_list/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkBoxCallBack: (bool? checkBoxState) {
                   taskData.updateTask(task);
                },
              longPressCallBack: () {
                  taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.tasksCount,
        );
      },
    );
  }
}
