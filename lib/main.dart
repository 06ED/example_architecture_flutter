import 'package:dio/dio.dart';
import 'package:env_flutter/env_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:talker/talker.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

import 'repositories/example_repository/models/models.dart';
import 'router/router.dart';
import 'example_app.dart';
import 'api/api.dart';

import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Loading env variables
  await dotenv.load();
  
  // Creating router instance
  final appRouter = AppRouter();

  // Creating isar instance
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [UserSchema],
    directory: dir.path,
  );

  // Setup talker
  final talker = Talker();

  // Init dio
  final dio = Dio();
  dio.interceptors.add(TalkerDioLogger(talker: talker));

  // Init rest api client
  final restClient = RestClient(dio);

  // Setup GetIt instances
  GetIt.I.registerSingleton<Dio>(dio);
  GetIt.I.registerSingleton<RestClient>(restClient);
  GetIt.I.registerSingleton<Talker>(talker);
  GetIt.I.registerSingleton<Isar>(isar);
  GetIt.I.registerSingleton<AppRouter>(appRouter);

  runApp(const ExampleApp());
}
