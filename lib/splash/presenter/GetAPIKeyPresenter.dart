import 'package:dio/dio.dart';
import 'package:flutter_app/Api/api_service.dart';
import 'package:flutter_app/splash/contract/login_activity_contract.dart';
import 'package:flutter_app/splash/apimodal/KeydateResponse.dart';
class GetAPIKeyPresenter implements LoginActivityInteractor {
  LoginActivityView view;
  final mDio = Dio();

  var api = RestClient(Dio());
  GetAPIKeyPresenter(this.view);
  @override
  void destroy() => view = null;

  @override
  void getAPIKeyDetail(String key) async{
    await api.getKey(key).then((it){
      if(it.status == 1){
        var  response = KeydateResponse.fromJson(it.data);
        this.onSuccess(response);
        view?.omMessage(it.message);
        view?.finish();
      }else{
        view?.omResponseFail(it.message);
      }
    }).catchError((e){
      print("Exception $e");
      view?.omResponseFail(e.toString());
    });
  }

  @override
  void onSuccess(KeydateResponse response) {
    view?.omResponseSuccess(response);
  }

  @override
  void onFail(String str) {
    view?.omResponseFail(str);
  }
}