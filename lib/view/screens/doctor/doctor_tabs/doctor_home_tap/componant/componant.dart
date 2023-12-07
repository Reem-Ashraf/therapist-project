import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../componant/app_color.dart';

Widget HomePageCard(
{
  required String text,
  required IconData icon,
  required Color color
}
    )=>InkWell(
  onTap: (){},
  child: Container(
    padding: EdgeInsets.all(20),
    height: 15.h,
    width: 35.w,
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      children: [
        Icon(icon,color: Color(0xfffefcf8),size: 45.sp,),
        Text(text,style: TextStyle(
            color: Colors.white,
            fontSize: 13.sp
        ),)
      ],
    ),
  ),
);
Widget TextFieldSetting( {
  required TextEditingController controller,
  required String labelText,
  required TextInputType type,
  Icon?icon
})=>Padding(
  padding: const EdgeInsets.only(right: 20,left: 20),
  child: Container(
    padding: EdgeInsets.only(left: 10),
    height: 7.h,
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
          hintText: labelText,
          hintStyle: TextStyle(
            color:Color(0xffc4c4c4),
            fontSize: 11.5.sp,

          )
      ),
    ),
  ),
);