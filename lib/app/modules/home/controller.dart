import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_contributors/app/data/models/repositories.dart';
import 'package:git_contributors/app/data/models/repository.dart';
import 'package:git_contributors/app/modules/home/repository.dart';
import 'package:git_contributors/core/utils/snack.dart';
import 'package:git_contributors/routes/pages.dart';

class HomeController extends GetxController
    with StateMixin<List<Repositories>> {
  final HomeRepository repository;
  final repoName = ''.obs;
  HomeController(this.repository);

  @override
  void onInit() {
    getRepos();
    super.onInit();
  }

  getRepos() async {
    final response = await repository.getRepos();
    if (response.runtimeType != bool) {
      change(response, status: RxStatus.success());
    } else {
      change(null, status: RxStatus.error('Error load repositories.'));
    }
  }

  getRepoName() async {
    final response = await repository.getRepoName(repoName.value);
    if (response.runtimeType != bool) {
      // print(response!.items!.first.htmlUrl!);
      Get.toNamed(Routes.REPO, arguments: response);
    } else {
      SnackBarwidget.showSnack('Repository not found, enter exact name');
    }
  }

  onChangedRepoName(v) => repoName.value = v;
}
