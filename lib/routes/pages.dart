import 'package:get/get.dart';
import 'package:git_contributors/app/modules/home/binding.dart';
import 'package:git_contributors/app/modules/home/page.dart';
import 'package:git_contributors/app/modules/repo/binding.dart';
import 'package:git_contributors/app/modules/repo/page.dart';
import 'package:git_contributors/app/modules/repo_contributors/binding.dart';
import 'package:git_contributors/app/modules/repo_contributors/page.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding()),
    GetPage(
        name: Routes.REPO_CONTRIBUTORS,
        page: () => RepoContributorsPage(),
        binding: RepoContributorsBinding()),
    GetPage(name: Routes.REPO, page: () => RepoPage(), binding: RepoBinding()),
  ];
}
