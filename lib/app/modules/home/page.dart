import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_contributors/app/modules/home/controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Column(children: [
          controller.obx(
              (state) => Expanded(
                    child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (_, __) => Container(
                              padding: const EdgeInsets.only(
                                  top: 8.0, left: 16.0, right: 16.0),
                              height: 40.0,
                              width: Get.width,
                              child: Text('repos'),
                            )),
                  ),
              onError: (e) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                          child: Text(e == null ? '' : e,
                              style: TextStyle(color: Colors.white))),
                    ],
                  ),
              onLoading: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Center(child: CircularProgressIndicator()),
                ],
              )),
        ])));
  }
}
