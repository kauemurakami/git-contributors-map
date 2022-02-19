import 'package:get/get.dart';
import 'package:git_contributors/app/modules/repo_contributors/repository.dart';

class RepoContributorsController extends GetxController {
  final RepoContributorsRepository repository;
  RepoContributorsController(this.repository);
}
