import 'package:get/get.dart';
import 'package:git_contributors/app/data/provider/api.dart';
import 'package:git_contributors/app/modules/repo/controller.dart';
import 'package:git_contributors/app/modules/repo/repository.dart';

class RepoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RepoController>(() => RepoController(RepoRepository(MyApi())));
  }
}
