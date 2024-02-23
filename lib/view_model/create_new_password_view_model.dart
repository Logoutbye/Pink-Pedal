import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liveproject/import_all.dart';


final createNewPasswordViewModelProvider = StateNotifierProvider<
    CreateNewPasswordViewModel, ApiResponse<GeneralResponseModel>>((ref) {
  return CreateNewPasswordViewModel();
});

class CreateNewPasswordViewModel
    extends StateNotifier<ApiResponse<GeneralResponseModel>> {
  final AuthRepository _myRepo = AuthRepository();
  CreateNewPasswordViewModel() : super(ApiResponse.completed(null));

  Future<String?> createNewPasswordApi(
      String email, String password, String token, BuildContext context) async {
    try {
      state = ApiResponse.loading();

      final data = {
        'email': email,
        'password': password,
        'token': token,
      };

      final response = await _myRepo.createNewPassword(data);

      // Convert the response to UserModel
      final modelResponse = GeneralResponseModel.fromJson(response);
      // var msg = response['message'];
      // Utils.toastMessage(msg);
      state = ApiResponse.completed(modelResponse);

      if (modelResponse.success == true) {
        opendialog(context);
        // Navigator.pushNamed(context, RoutesName.otpScreen,
        //     arguments: OtpDetilasArgument(

        //         isCommingFromRegistrationScreen: true,
        //         verifyWithEmail: false));
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

  void opendialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/illusterate.png',
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Text(
                  'Success',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Wrap(
                  children: [
                    Text(
                      'Your password is successfully updated.',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.pop(context);
                      // Navigator.pushReplacementNamed(
                      //     context, RoutesName.signInScreen);
                      Navigator.pushNamedAndRemoveUntil(context, RoutesName.selectRoleScreen, (route) => false);
                    },
                    child: const Text(
                      'Continue',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
