// register.service.dart

import 'dart:io';

import 'package:crush_dating/onboarding/model/login.response.model.dart';
import 'package:crush_dating/onboarding/model/register.user.body.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;
part 'register.service.g.dart'; // This will be generated

@RestApi(baseUrl: "https://crushes-backend-fzuu4.ondigitalocean.app")
abstract class RegisterUserService {
  factory RegisterUserService(Dio dio, {String baseUrl}) = _RegisterUserService;

  @POST("/users/create")
  Future<Map<String, dynamic>> registerUser(@Body() RegisterModelBody body);
  @POST('/user/upload-profile')
  @MultiPart()
  Future<FileUploadResponse> uploadProfile(
    @Part() File file,
  );
}

class FileUploadResponse {
  final String message;
  final String status;

  FileUploadResponse({required this.message, required this.status});

  factory FileUploadResponse.fromJson(Map<String, dynamic> json) {
    return FileUploadResponse(
      message: json['message'],
      status: json['file_url'],
    );
  }
}
