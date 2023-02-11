import 'dart:convert';

import 'package:TodoX/app/core/utils/keys.dart';
import 'package:get/get.dart';
import '../../models/task.dart';
import '../../services/storage/task_services.dart';

class TaskProvider {
  final _storage = Get.find<TaskStorageService>();

  // {
  //       "_id": "63e1853412ff143a2929378b",
  //       "id": "0021",
  //       "userId": "aditya21@gmail.com",
  //       "title": "Personal",
  //       "icon": 58513,
  //       "color": "Blue",
  //       "todos": [],
  //       "__v": 0
  //   },

  List<Task> readTasks() {
    var tasks = <Task>[];
    jsonDecode(_storage.read(taskKey).toString())
        .forEach((e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }

  void writeTasks(List<Task> tasks) {
    _storage.write(taskKey, jsonEncode(tasks));
  }
}
