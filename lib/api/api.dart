import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'api.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
}