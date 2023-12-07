import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../componant/app_color.dart';
import '../../../../../../componant/image_path.dart';

Widget buildComleteDataRegisterIteams({
  required String?image,
  required var value,
  required List<String>?list,
  required Function(dynamic) onChange,
  required String txt

})=> Row(
  children: [
Image(image: AssetImage(image!,),height: 3.5.h,),
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
);
Widget container()=> Container(
  height: .1.h,
  color: AppColors.primaryColor,
);