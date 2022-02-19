import 'package:git_contributors/app/data/provider/api.dart';

class RepoContributorsRepository {
  final MyApi api;

  RepoContributorsRepository(this.api);
  getContributors(contributorsUrl) => api.getContributors(contributorsUrl);
}
