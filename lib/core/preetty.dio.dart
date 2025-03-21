import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

Future<Dio> createDio(ref) async {
  final dio = Dio();

  // if (!Hive.isBoxOpen('userdata')) {
  //   await Hive.openBox('userdata');
  // }

  dio.interceptors.add(PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody: true,
    responseHeader: true,
  ));

  // var box = Hive.box('userdata');
  // var token = box.get('token');

  // log("Token: $token");

  // dio.interceptors.add(
  //   InterceptorsWrapper(
  //     onRequest: (options, handler) async {
  //       // Retrieve token before sending request
  //       options.headers.addAll({
  //         'Content-Type': 'application/json',
  //         'Authorization': 'Bearer $token'
  //       });
  //       handler.next(options); // Continue with the request
  //     },
  //     onResponse: (response, handler) {
  //       handler.next(response);
  //     },
  //     onError: (DioException e, handler) async {
  //       if (e.response?.statusCode == 500) {
  //         // Token expired, refresh it
  //         log("Token expired, refreshing...");

  //         Fluttertoast.showToast(msg: "Session expired, try login");
  //         navigatorKey.currentState?.pushAndRemoveUntil(
  //           MaterialPageRoute(builder: (context) => SplashScreen()),
  //           (route) => false, // Remove all routes
  //         );
  //         return;
  //       } else {
  //         handler.next(e);
  //       }
  //     },
  //   ),
  // );

  return dio;
}