import 'package:crush_dating/home/model/user.natch.model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;
part 'home.service.g.dart';

@RestApi(baseUrl: "https://4d06-2401-4900-1c1a-331b-8089-62aa-317c-5a14.ngrok-free.app")
abstract class HomeService {
  factory HomeService(Dio dio, {String baseUrl}) = _HomeService;

  @GET("/user/match-users/")
  Future<UserMatchResModel> userMatches();
}
