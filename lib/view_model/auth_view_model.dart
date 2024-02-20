// import 'package:liveproject/import_all.dart';
// // export 'package:flutter/cupertino.dart';

// class AuthViewModel with ChangeNotifier {

//   final _myRepo = AuthRepository();

//   bool _loading = false ;
//   bool get loading => _loading ;

//   bool _signUpLoading = false ;
//   bool get signUpLoading => _signUpLoading ;

//   setLoading(bool value){
//     _loading = value;
//     notifyListeners();
//   }

//   setSignUpLoading(bool value){
//     _signUpLoading = value;
//     notifyListeners();
//   }

//   Future<void> loginApi(dynamic data , BuildContext context) async {

//     setLoading(true);

//     _myRepo.loginApi(data).then((value){
//       setLoading(false);
//       // final userPreference = Provider.of<UserViewModel>(context , listen: false);
//       // userPreference.saveUser(
//       //   UserModel(
//       //     token: value['token'].toString()
//       //   )
//       // );

//       Utils.flushBarErrorMessage('Login Successfully', context);
//       Navigator.pushNamed(context, RoutesName.addDestination);
//       if(kDebugMode){
//         print(value.toString());

//       }
//     }).onError((error, stackTrace){
//       setLoading(false);
//       Utils.flushBarErrorMessage(error.toString(), context);
//       if(kDebugMode){
//         print(error.toString());
//       }

//     });
//   }

//   Future<void> signUpApi(dynamic data , BuildContext context) async {

//     setSignUpLoading(true);

//     _myRepo.signUpApi(data).then((value){
//       setSignUpLoading(false);
//       Utils.flushBarErrorMessage('SignUp Successfully', context);
//       Navigator.pushNamed(context, RoutesName.addDestination);
//       if(kDebugMode){
//         print(value.toString());

//       }
//     }).onError((error, stackTrace){
//       setSignUpLoading(false);
//       Utils.flushBarErrorMessage(error.toString(), context);
//       if(kDebugMode){
//         print(error.toString());
//       }

//     });
//   }

// }
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liveproject/data/response/api_response.dart';
import 'package:liveproject/import_all.dart';

class AuthViewModel extends StateNotifier<ApiResponse<UserModel?>> {
  final AuthRepository _myRepo = AuthRepository();

  AuthViewModel() : super(ApiResponse.loading());

  Future<void> loginApi(dynamic data, BuildContext context) async {
    state = ApiResponse.loading();

    try {
      final value = await _myRepo.loginApi(data);
      state = ApiResponse.completed(value);
      // Handle successful login
      Utils.flushBarErrorMessage('Login Successfully', context);
      Navigator.pushNamed(context, RoutesName.addDestination);
      if (kDebugMode) {
        print(value.toString());
      }
    } catch (error) {
      state = ApiResponse.error(error.toString());
      // Handle login error
      Utils.flushBarErrorMessage(error.toString(), context);
      if (kDebugMode) {
        print(error.toString());
      }
    }
  }

  Future<void> signUpApi(dynamic data, BuildContext context) async {
    state = ApiResponse.loading();

    try {
      final value = await _myRepo.signUpApi(data);
      state = ApiResponse.completed(value);
      // Handle successful signup
      Utils.flushBarErrorMessage('SignUp Successfully', context);
      Navigator.pushNamed(context, RoutesName.addDestination);
      if (kDebugMode) {
        print(value.toString());
      }
    } catch (error) {
      state = ApiResponse.error(error.toString());
      // Handle signup error
      Utils.flushBarErrorMessage(error.toString(), context);
      if (kDebugMode) {
        print(error.toString());
      }
    }
  }
}

final authViewModelProvider =
    StateNotifierProvider<AuthViewModel, ApiResponse<UserModel?>>((ref) {
  return AuthViewModel();
});
