import 'dart:convert';

import 'package:get/get_connect/connect.dart';
import 'package:git_contributors/app/data/models/repositories.dart';

const baseUrl = 'https://api.github.com';

class MyApi extends GetConnect {
  getRepos() async {
    final response = await get('$baseUrl/repositories', decoder: (res) => res);

    if (response.hasError) {
      return false;
    } else {
      return repositoriesFromJson(response.body);
    }
  }

  getRepoName(repoName) async {
    final response =
        await get('$baseUrl/search/code?q=' '+repo:$repoName/$repoName');
    if (response.hasError) {
      return false;
    } else {
      return repositoriesFromJson(response.body);
    }
  }
}
