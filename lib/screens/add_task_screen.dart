import 'package:flutter/material.dart';
import 'package:to_do_list/models/Task_Data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  // final Function addTaskCallBack;
  // const AddTaskScreen(this.addTaskCallBack, {super.key});

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;

    return Container(
      color: const Color(0xFF757575),
      child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0))),
          height: 400.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Text(
                  'Add Tasks',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.deepPurpleAccent[100],
                  ),
                ),
              ),
              TextField(
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
                textAlign: TextAlign.center,
                cursorColor: Colors.deepPurpleAccent[100],
                toolbarOptions: const ToolbarOptions(
                  copy: true,
                  paste: true,
                ),
                //textAlign: TextAlign.start,
                autofocus: true,
                textInputAction: TextInputAction.newline,
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent[100],
                ),
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle!);
                  Navigator.pop(context);
                },
                child: const Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )),
    );
  }
}
