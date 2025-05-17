import 'package:crud_assignment/models/task_model.dart';
import 'package:crud_assignment/screens/view_task.dart';
import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
    required this.task,
    required this.index,
    required this.onTaskDeleted,
  });

  final Task task;
  final int index;

  final Function(int) onTaskDeleted;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => ViewTask(
                  task: task,
                  index: index,
                  onNewTaskDeleted: onTaskDeleted,
                ),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(task.title, style: TextStyle(fontSize: 20)),
              const SizedBox(height: 10),
              Text(
                task.body,
                style: TextStyle(fontSize: 20),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
