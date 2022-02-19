import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_contributors/app/modules/home/binding.dart';
import 'package:git_contributors/app/modules/home/page.dart';
import 'package:git_contributors/routes/pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      initialBinding: HomeBinding(),
      initialRoute: Routes.HOME,
      getPages: AppPages.pages,
    ),
  );
}
