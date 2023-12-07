import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

import '../../../../../../../componant/app_color.dart';

Widget TextFieldEditPersonalInfo( {
  required TextEditingController controller,
  required String labelText,
  required TextInputType type,
  required String text,
  Icon?icon
})=>Padding(
  padding: const EdgeInsets.only(right: 20,left: 20),
  child: Container(
    padding: EdgeInsets.only(left: 10),
    height: 7.h,
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
Widget buildUpadteDateDoctorInfoIteams({
  required var value,
  required List<String>?list,
  required Function(dynamic) onChange,
  required String txt,
  required String text

})=> Container(
  padding: EdgeInsets.only(left: 10),
  width: 43.h,
  decoration: BoxDecoration(
    color: AppColors.textColorWhite,
    borderRadius: BorderRadius.circular(10)
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