import 'package:crud_assignment/models/task_model.dart' show Task;
import 'package:crud_assignment/screens/create_task.dart';
import 'package:crud_assignment/widgets/task_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<Task> tasks = List.empty(growable: true);

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    void onNewTaskCreated(Task task) {
      tasks.add(task);
      setState(() {});
    }

    void onTaskDelete(int index) {
      tasks.removeAt(index);
      setState(() {});
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 4.0,
        title: Text("Tasks", style: TextStyle(fontWeight: FontWeight.bold)),
      ),

      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TaskCard(
            task: tasks[index],
            index: index,
            onTaskDeleted: onTaskDelete,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (context) => CreateTask(onNewTaskCreated: onNewTaskCreated),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
