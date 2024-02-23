import 'package:liveproject/import_all.dart';

class AuthRepository {
  BaseApiServices apiServices = NetworkApiService();

  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response =
          await apiServices.fetchPostApiResponse(AppUrl.login, data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> signUpApi(dynamic data) async {
    try {
      dynamic response =
          await apiServices.fetchPostApiResponse(AppUrl.signup, data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> verifyOtp(dynamic data) async {
    try {
      dynamic response =
          await apiServices.fetchPostApiResponse(AppUrl.verifyOtp, data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> resendOtp(dynamic data) async {
    try {
      dynamic response =
          await apiServices.fetchPostApiResponse(AppUrl.resendOtp, data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> createNewPassword(dynamic data) async {
    try {
      dynamic response = await apiServices.fetchPostApiResponse(
          AppUrl.createNewPassword, data);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
