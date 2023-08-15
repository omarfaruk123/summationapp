import 'package:flutter/material.dart';

InputDecoration AppInputStyle(lable){
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    filled: true,
    fillColor: Colors.white54,
    border: OutlineInputBorder(),
    labelText: lable,

  );
}

TextStyle HeadTextStyle(){
  return TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w500,
  );
}

ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(20),
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
  );
}