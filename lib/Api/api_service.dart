

import 'package:dio/dio.dart';
import 'package:flutter_app/splash/apimodal/CommonResponse.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: "http://webapps.iqlance-demo.com/ggp/")
abstract class RestClient{
  factory RestClient(Dio dio) = _RestClient;
  /*dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
  var customHeaders = {
    'content-type': 'application/json'
    ...
  };
  options.headers.addAll(customHeaders);
  return options;
  };*/

  @GET("api/apikey")
  Future<CommonResponse> getKey(@Header("xapikey") String token);

}