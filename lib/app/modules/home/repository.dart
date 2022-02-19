import 'package:git_contributors/app/data/provider/api.dart';

class HomeRepository {
  final MyApi api;

  HomeRepository(this.api);

  getRepos() => api.getRepos();
  getRepoName(repoName) => api.getRepoName(repoName);
}
