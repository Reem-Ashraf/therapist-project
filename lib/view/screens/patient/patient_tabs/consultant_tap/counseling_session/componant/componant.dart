import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../componant/app_color.dart';

Widget TextFieldCounselingSession( {
  required TextEditingController controller,
  required TextInputType type,
  Icon?icon
})=>Container(
  padding: EdgeInsets.only(left: 10),
  height: 30.h,
  width: double.infinity,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.scaffoldColor
  ),
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

    ),
  ),
);