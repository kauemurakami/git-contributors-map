import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_contributors/app/data/models/repositories.dart';
import 'package:git_contributors/app/modules/home/controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Didn\'t find what you were looking for?',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17.0),
                ),
                TextField(
                  cursorColor: Colors.black,
                  onChanged: (v) => controller.onChangedRepoName(v),
                  decoration: const InputDecoration(
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: 'Search by name ex: getx, jquery '),
                ),
                MaterialButton(
                  onPressed: () => controller.getRepoName(),
                  child: Text('Search'),
                )
              ],
            ),
          ),
          controller.obx(
              (state) => Expanded(
                    child: ListView.builder(
                        itemCount: state!.length,
                        itemBuilder: (_, __) => InkWell(
                              onTap: () => print('aa'),
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 16.0, right: 16.0),
                                height: 70.0,
                                width: Get.width,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              state[__].fullName!,
                                              style: const TextStyle(
                                                  color: Colors.blueGrey,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                            Container(
                                              decoration: const BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              4.0))),
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Text(
                                                state[__].name!,
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              state[__].owner!.login!,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black),
                                            ),
                                            Container(
                                              height: 40.0,
                                              width: 40.0,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                      image: NetworkImage(
                                                          state[__]
                                                              .owner!
                                                              .avatarUrl!))),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: Get.width,
                                      height: 1.0,
                                      decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          Colors.white,
                                          Colors.black,
                                        ],
                                      )),
                                    )
                                  ],
                                ),
                              ),
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
