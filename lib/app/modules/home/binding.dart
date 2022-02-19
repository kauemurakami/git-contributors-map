import 'package:get/get.dart';
import 'package:git_contributors/app/data/provider/api.dart';
import 'package:git_contributors/app/modules/home/controller.dart';
import 'package:git_contributors/app/modules/home/repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(HomeRepository(MyApi())));
  }
}
