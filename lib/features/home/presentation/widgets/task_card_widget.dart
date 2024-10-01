import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskCardWidget extends StatefulWidget {
  const TaskCardWidget({
    required this.taskDescription,
    required this.taskDueDate,
    super.key,
  });
  final String taskDescription;
  final DateTime taskDueDate;

  @override
  State<TaskCardWidget> createState() => _TaskCardWidgetState();
}

class _TaskCardWidgetState extends State<TaskCardWidget> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            SizedBox(
              height: 24,
              width: 24,
              child: Checkbox(
                value: checkBoxValue,
                onChanged: (value) {
                  setState(() {
                    checkBoxValue = value!;
                  });
                },
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(widget.taskDescription),
            ),
            Text(DateFormat('d MMM y').format(widget.taskDueDate)),
          ],
        ),
      ),
    );
  }
}
