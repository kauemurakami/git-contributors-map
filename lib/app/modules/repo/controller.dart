import 'package:get/get.dart';
import 'package:git_contributors/app/data/models/repository.dart';
import 'package:git_contributors/app/modules/repo/repository.dart';

class RepoController extends GetxController {
  final RepoRepository repository;
  RepoController(this.repository);
  Repository? repo = Get.arguments;

  @override
  void onInit() {
    super.onInit();
  }
}
