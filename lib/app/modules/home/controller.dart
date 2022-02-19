import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_contributors/app/modules/home/repository.dart';

class HomeController extends GetxController with StateMixin {
  final HomeRepository repository;
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
}
