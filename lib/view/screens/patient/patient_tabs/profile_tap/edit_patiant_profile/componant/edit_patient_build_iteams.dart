import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../componant/app_color.dart';
import '../../../../../../componant/image_path.dart';

Widget buildUpdateIteams({
  required var value,
  required List<String>?list,
  required Function(dynamic) onChange,
  required String txt,
  required String text

})=> Container(
  padding: EdgeInsets.only(left: 10),
  height: 6.5.h,
  width: 90.w,
  decoration: BoxDecoration(
    color: AppColors.textColorWhite,
    borderRadius: BorderRadius.circular(12)
  ),
  child:   Row(

    children: [

      Text(text,style: TextStyle(

        color:AppColors.CameraIconColor,

        fontSize: 13.sp,

      )),

      SizedBox(width: .5.w,),

      Container(

        width: 60.w,

        child: DropdownButtonHideUnderline(

          child: DropdownButton(

              underline: Container(color: Colors.transparent),

              padding: EdgeInsets.only(right: 5,left: 5),
              

              //isExpanded: true,

              hint: Text(txt),

              // Initial Value

              value: value,

              // Down Arrow Icon

              iconDisabledColor: Colors.transparent,

              iconEnabledColor: Colors.transparent,

              //  icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items

              items: list!.map((item) {

                return DropdownMenuItem(

                  value: item,

                  child: Text(item as String),

                );



              }).toList(),

              // After selecting the desired option,it will

              // change button value to selected value

              onChanged: onChange

          ),

        ),

      ),

    ],

  ),
);
Widget container()=> Container(
  height: .1.h,
  color: AppColors.primaryColor,
);