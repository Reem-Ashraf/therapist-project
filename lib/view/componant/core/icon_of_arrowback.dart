
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget arrowBack({
  required VoidCallback onTap
})=> InkWell(
  onTap:onTap ,
  child:   Container(

    height: 5.h,

    width:16.w ,

    decoration: BoxDecoration(

      color: Color(0xffededed),

      borderRadius: BorderRadius.circular(20),

    ),

    child: Icon(Icons.arrow_back,color: Color(0xff787878),),

  ),
);