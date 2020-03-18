import 'package:flutter/cupertino.dart';
import 'package:flutter_app/DataModal.dart';
import 'package:toast/toast.dart';
class Util{
   ShowToast(String str,BuildContext context){
     Toast.show(str, context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
  }
}