import 'package:crush_dating/home/model/user.natch.model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;
part 'home.service.g.dart';

@RestApi(baseUrl: "https://crushes-backend-fzuu4.ondigitalocean.app")
abstract class HomeService {
  factory HomeService(Dio dio, {String baseUrl}) = _HomeService;

  @GET("/user/match-users/")
  Future<UserMatchResModel> userMatches();
}
