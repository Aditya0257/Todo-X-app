import 'package:TodoX/app/modules/home/controller.dart';
import 'package:get/get.dart';

import '../../data/providers/task/provider.dart';
import '../../data/services/storage/task_repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        ),
      ),
    );
  }
}
