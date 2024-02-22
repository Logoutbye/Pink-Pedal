import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liveproject/import_all.dart';

final loginViewModelProvider =
    StateNotifierProvider<LoginViewModel, ApiResponse<UserLogin>>((ref) {
  return LoginViewModel();
});

class LoginViewModel extends StateNotifier<ApiResponse<UserLogin>> {
  final AuthRepository _myRepo = AuthRepository();
  LoginViewModel() : super(ApiResponse.completed(null));

  Future<void> loginApi(
      String email, String password, String role, BuildContext context) async {
    state = ApiResponse.loading();

    try {
      final data = {"email": email, "password": password, "role": role};

      final response = await _myRepo.loginApi(data);

      final modelResponse = UserLogin.fromJson(response);
      var msg = response['message'];
      Utils.toastMessage(msg);
      state = ApiResponse.completed(modelResponse);
    } catch (error) {
      // ignore: use_build_context_synchronously
      Utils.flushBarErrorMessage(error.toString(), context);
      // if (kDebugMode) {
      //   print('::: at onError ${error.toString()}');
      // }
      state = ApiResponse.error(error.toString());
    } finally {
      // Set loading to false regardless of success or error
      state = ApiResponse.completed(null);
    }
  }
}
