

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/views/styles/s_constants.dart';


class WTextField extends StatelessWidget{
  TextEditingController controller;
  bool isPass;

  WTextField({this.controller,this.isPass});


  @override
  Widget build(BuildContext context) {
   return Container(
     decoration: DecorationConstants.decorationTextField,
     child:TextFormField(
       controller: controller,
       obscureText: isPass,
       textInputAction: TextInputAction.done,
       keyboardType: TextInputType.text,
       decoration:  InputDecoration(fillColor: Colors.white),
     ),
   );
  }

}