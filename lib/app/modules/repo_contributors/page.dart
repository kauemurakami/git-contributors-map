import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_contributors/app/modules/repo_contributors/controller.dart';

class RepoContributorsPage extends GetView<RepoContributorsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('RepoContributorsPage')),
        body: SafeArea(child: Text('RepoContributorsController')));
  }
}
