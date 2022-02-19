import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_contributors/app/modules/repo/controller.dart';

class RepoPage extends GetView<RepoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('RepoPage')),
        body: SafeArea(child: Text('RepoController')));
  }
}
