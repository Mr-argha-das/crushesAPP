// register.service.dart

import 'package:crush_dating/onboarding/model/login.response.model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;
part 'login.service.g.dart'; // This will be generated

@RestApi(baseUrl: "https://crushes-backend-fzuu4.ondigitalocean.app")
abstract class LoginService {
  factory LoginService(Dio dio, {String baseUrl}) = _LoginService;

  @POST("/user/login")
  
  Future<LoginResponseModel> loginUser({
    @Header('accept') String accept = "application/json",
    @Header('Content-Type') String contentType = "application/x-www-form-urlencoded",
    @Field("grant_type") required String grantType,
    @Field("username") required String username,
    @Field("password") required String password,
    @Field("scope") String? scope,
    @Field("client_id") required String clientId,
    @Field("client_secret") required String clientSecret,
  });
}
