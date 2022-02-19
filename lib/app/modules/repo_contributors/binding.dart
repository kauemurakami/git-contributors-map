import 'package:get/get.dart';
import 'package:git_contributors/app/data/provider/api.dart';
import 'package:git_contributors/app/modules/repo_contributors/controller.dart';
import 'package:git_contributors/app/modules/repo_contributors/repository.dart';

class RepoContributorsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RepoContributorsController>(
        () => RepoContributorsController(RepoContributorsRepository(MyApi())));
  }
}
