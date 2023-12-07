import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../app_color.dart';

Widget EditProfileTextField( {
    required TextEditingController controller,
    required String labelText,
    required TextInputType type,
  required String text,
  Icon?icon
})=>Padding(
  padding: const EdgeInsets.only(right: 20,left: 20),
  child: Container(
    padding: EdgeInsets.only(left: 10),
    height: 6.h,
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.textColorWhite
    ),
    child: Row(
      children:<Widget> [
        Text(text,style: TextStyle(
          color:AppColors.CameraIconColor,
          fontSize: 13.sp,
        ),),
        SizedBox(width:3.w,),
        Expanded(
          child: TextFormField(
            controller: controller,
            keyboardType: type,
            decoration: InputDecoration(
              prefixIcon: icon,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: labelText,
                hintStyle: TextStyle(
                  color:AppColors.CameraIconColor,
                  fontSize: 12.5.sp,

                )
            ),
          ),
        ),


      ],
    ),
  ),
);