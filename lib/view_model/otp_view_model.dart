import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liveproject/import_all.dart';

final otpViewModelProvider =
    StateNotifierProvider<OtpViewModel, ApiResponse<GeneralResponseModel>>((ref) {
  return OtpViewModel();
});

class OtpViewModel extends StateNotifier<ApiResponse<GeneralResponseModel>> {
  final AuthRepository _myRepo = AuthRepository();
  OtpViewModel() : super(ApiResponse.completed(null));

  Future<void> verifyOtp(String phoneNumber, String otp, bool verifyWithEmail,
      bool isCommingFromRegistrationScreen, BuildContext context) async {
    state = ApiResponse.loading();

    try {
      final data = verifyWithEmail == true
          ? {
              "email": phoneNumber,
              "otp": otp,
            }
          : {
              "phoneNumber": phoneNumber,
              "otp": otp,
            };
      print('::: data i am sending is $data');
      final response = await _myRepo.verifyOtp(data);
      // print('::: REsponse ${response}');
      final modelResponse = GeneralResponseModel.fromJson(response);
      var msg = response['message'];
      var token = response['token'];
      Utils.toastMessage(msg);
      state = ApiResponse.completed(modelResponse);
      if (modelResponse.success == true) {
        if (isCommingFromRegistrationScreen == true) {
          Navigator.pop(context);
          Navigator.pop(context);
        } else {
          Navigator.pushNamed(context, RoutesName.createNewPassword,
              arguments: CreateNewPasswordArugments(
                  token: token, phoneOrEmail: phoneNumber, verifyWithEmail: verifyWithEmail));
        }
      }
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

  Future<void> resendOtp(String phoneNumber, bool isForgetPassword,
      bool sendToEmail, BuildContext context) async {
    state = ApiResponse.loading();

    try {
      final optData = sendToEmail == true
          ? {
              "email": phoneNumber,
            }
          : {
              "phoneNumber": phoneNumber,
            };

      final response = await _myRepo.resendOtp(optData);
      print('::: REsponse $response');
      final userModel = GeneralResponseModel.fromJson(response);
      var msg = response['message'];
      // Utils.toastMessage(msg);
      if (userModel.success == true) {
        Utils.snackBar(msg, context);
      }
      if (isForgetPassword == true) {
        Navigator.pushNamed(context, RoutesName.otpScreen,
            arguments: OtpDetilasArgument(
                verifyWithEmail: sendToEmail,
                phoneNo: phoneNumber,
                isCommingFromRegistrationScreen: false));
      }
      state = ApiResponse.completed(userModel);
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
