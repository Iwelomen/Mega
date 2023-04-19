import 'package:flutter/material.dart';

navigateReplace(BuildContext context, Widget widget){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> widget));
}

navigatePush(BuildContext context, Widget widget){
  Navigator.push(context, MaterialPageRoute(builder: (context)=> widget));
}

navigateBack(BuildContext context){
  Navigator.pop(context);
}