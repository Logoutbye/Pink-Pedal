import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:liveproject/import_all.dart';

final signUpViewModelProvider =
    StateNotifierProvider<SignUpViewModel, ApiResponse<UserRegistration>>(
        (ref) {
  return SignUpViewModel();
});

class SignUpViewModel extends StateNotifier<ApiResponse<UserRegistration>> {
  final AuthRepository _myRepo = AuthRepository();
  SignUpViewModel() : super(ApiResponse.completed(null));

  Future<String?> signUpApi(String email, String password, String name,
      String phoneNo, BuildContext context) async {
    try {
      state = ApiResponse.loading();

      final data = {
        'email': email,
        'password': password,
        'phoneNumber': phoneNo,
        'username': name,
      };

      final response = await _myRepo.signUpApi(data);

      // Convert the response to UserModel
      final modelResponse = UserRegistration.fromJson(response);
      var msg = response['message'];
      print(':::response for sigin up${response}');
      Utils.toastMessage(msg);
      state = ApiResponse.completed(modelResponse);

      if (modelResponse.status == true) {
        Navigator.pushNamed(context, RoutesName.otpScreen,
            arguments: OtpDetilasArgument(
                phoneNo: phoneNo,
                isCommingFromRegistrationScreen: true,
                verifyWithEmail: false));
      }

      return null; // No error
    } catch (error) {
      Utils.toastMessage(error.toString()); // Show a generic error message
      if (kDebugMode) {
        print('::: at onError ${error.toString()}');
      }
      state = ApiResponse.error(error.toString());

      return error.toString(); // Return the raw error message
    } finally {
      // Set loading to false regardless of success or error
      state = ApiResponse.completed(null);
    }
  }
}
