import 'package:flutter/material.dart';

class TaskProvider extends ChangeNotifier {
  List<Task> tasks = [];

  void addTask(String title) {
    tasks.add(Task(title: title, timeAdded: DateTime.now()));
    notifyListeners();
  }

  void toggleTaskStatus(int index) {
    tasks[index].isCompleted = !tasks[index].isCompleted;
    notifyListeners();
  }

  void removeTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }
}

class Task {
  String title;
  bool isCompleted;
  DateTime timeAdded;

  Task({required this.title, this.isCompleted = false, required this.timeAdded});
}
