import 'dart:convert';

import 'package:get/get_connect/connect.dart';
import 'package:git_contributors/app/data/models/repositories.dart';
import 'package:git_contributors/app/data/models/repository.dart';

const baseUrl = 'https://api.github.com';

class MyApi extends GetConnect {
  getRepos() async {
    final response = await get('$baseUrl/repositories', decoder: (res) => res);
    // print(response.body);
    if (response.hasError) {
      return false;
    } else {
      return repositoriesFromJson(response.body);
    }
  }

  getRepoName(repoName) async {
    final response =
        await get('$baseUrl/search/code?q=+repo:$repoName/$repoName');
    // print(response.body);
    print('$baseUrl/search/code?q=+repo:$repoName/$repoName');
    //https: //api.github.com/search/code?q=%27%27+repo:jquery/jquery
    if (response.hasError) {
      return false;
    } else {
      return Repository.fromJson(response.body);
    }
  }

  getContributors(contributorsUrl) async {
    final response = await get('$contributorsUrl');
    if (response.hasError) {
      return false;
    } else {
      // return repositoriesFromJson(response.body);
    }
  }
}
