import 'package:crud_assignment/models/task_model.dart';
import 'package:flutter/material.dart';

class ViewTask extends StatelessWidget {
  const ViewTask({
    super.key,
    required this.task,
    required this.index,
    required this.onNewTaskDeleted,
  });

  final Task task;
  final int index;

  final Function(int) onNewTaskDeleted;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(task.title),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Delete This?"),
                    content: Text("Task ${task.title} will be deleted."),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          onNewTaskDeleted(index);
                          Navigator.of(context).pop();
                        },
                        child: Text("Delete"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Cancel"),
                      ),
                    ],
                  );
                },
              );
            },
            icon: Icon(Icons.delete),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [Text(task.body, style: const TextStyle(fontSize: 18))],
        ),
      ),
    );
  }
}
