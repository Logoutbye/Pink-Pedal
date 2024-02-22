import 'package:liveproject/import_all.dart';

class HomeRepository {
  BaseApiServices apiServices = NetworkApiService();

  Future<MovieListModel> fetchMoviesList() async {
    try {
      dynamic response =
          await apiServices.fetchGetApiResponse(AppUrl.baseUrl);
      return response = MovieListModel.fromJson(response);
    } catch (e) {
      throw e;
    }
  }
}
