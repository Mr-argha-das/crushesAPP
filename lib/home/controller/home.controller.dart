
import 'dart:developer';

import 'package:crush_dating/core/preetty.dio.dart';
import 'package:crush_dating/home/controller/service/home.service.dart';
import 'package:crush_dating/home/model/user.natch.model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userMatchesProvider = FutureProvider.autoDispose<UserMatchResModel>((ref) async {
  final service = HomeService( await createDio(ref));
  return await service.userMatches();
});