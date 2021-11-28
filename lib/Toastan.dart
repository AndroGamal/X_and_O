import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toastan {
  void show(String massege){
    Fluttertoast.showToast(
      msg: massege,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black45,
      textColor: Colors.white,
      fontSize: 10,
      webShowClose: true,
    );

  }
  void show_unusual(String massege, context) {
    FToast fToast = FToast();
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.green,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.check),
          SizedBox(
            width: 12.0,
          ),
          Text(massege),
        ],
      ),
    );
    fToast.init(context);
    fToast.showToast(
      child: toast,toastDuration:Duration(seconds: 3)
    );
  }
}
