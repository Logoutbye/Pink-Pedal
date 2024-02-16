import 'package:liveproject/import_all.dart';

class AuthRepository  {

  BaseApiServices apiServices = NetworkApiService() ;


  Future<dynamic> loginApi(dynamic data )async{

    try{

      dynamic response = await apiServices.getPostApiResponse(AppUrl.baseUrl, data);
      return response ;

    }catch(e){
      throw e ;
    }
  }

  Future<dynamic> signUpApi(dynamic data )async{

    try{

      dynamic response = await apiServices.getPostApiResponse(AppUrl.baseUrl, data);
      return response ;


    }catch(e){
      throw e ;
    }
  }

}