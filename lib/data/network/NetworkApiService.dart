import 'package:liveproject/import_all.dart';
import 'package:http/http.dart' as http;

class NetworkApiService extends BaseApiServices {
  @override
  Future fetchGetApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }

    return responseJson;
  }

  @override
  Future fetchPostApiResponse(String url, dynamic data) async {
    dynamic responseJson;
    try {
      final headers = {'Content-Type': 'application/json'};
      Response response =
          await post(Uri.parse(url), headers: headers, body: jsonEncode(data))
              .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }

    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    // print(response.body);
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 201:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        // throw BadRequestException(response.body.toString());
        dynamic responseJson = jsonDecode(response.body);
        final errorMessage = responseJson['message'] ?? 'Bad Request';
        throw BadRequestException(errorMessage);
      case 500:
      case 404:
        dynamic responseJson = jsonDecode(response.body);
        final errorMessage = responseJson['message'] ?? 'Bad Request';
        throw UnauthorisedException(errorMessage);
      default:
        throw FetchDataException(
            'Error accured while communicating with serverwith status code${response.statusCode}');
    }
  }
}
