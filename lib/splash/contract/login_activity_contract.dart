import 'package:flutter_app/splash/apimodal/KeydateResponse.dart';

class LoginActivityInteractor {
  void getAPIKeyDetail(String key){}
  void onSuccess(KeydateResponse token){}
  void onFail(String str){}
  void destroy(){}
}

class LoginActivityView{
  void omMessage(String message){}
  void finish(){}
  void omResponseSuccess(KeydateResponse response){}
  void omResponseFail(String response){}
}
