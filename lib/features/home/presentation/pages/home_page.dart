import 'package:flutter/material.dart';
import 'package:todo_app/features/home/home.dart';
import 'package:todo_app/l10n/l10n.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<TaskModels> taskList = [
    TaskModels(
      taskDescription: 'Go to shopping center',
      taskDueDate: DateTime.now(),
    ),
    TaskModels(
      taskDescription: 'Go to service center to repair laptop',
      taskDueDate: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(context.l10n.homeAppTitleText),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(context.l10n.homeSearchTitleText),
            TextFormField(),
            const SizedBox(height: 24),
            Text(
              context.l10n.homeTaskListText,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: taskList.length,
                itemBuilder: (context, index) => TaskCardWidget(
                  taskDescription: taskList[index].taskDescription,
                  taskDueDate: taskList[index].taskDueDate,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
