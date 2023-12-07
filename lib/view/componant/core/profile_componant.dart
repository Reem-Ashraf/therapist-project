import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../app_color.dart';

Widget ProfileImageIteams({
  required VoidCallback?function,
  required String txt,
  required IconData icon
}) => InkWell(
      onTap: function,
      child: Row(
        children: [
          Icon(
            icon,
            color: AppColors.primaryColor,
          ),
          SizedBox(
            width: 2.5.w,
          ),
          Text(
            txt,
            style: TextStyle(color: AppColors.primaryColor),
          )
        ],
      ),
    );
Widget text({
  required String txt,
}) =>
    Text(
      txt,
      style: TextStyle(color: AppColors.primaryColor),
    );
divider() => Divider(
      height: 3.h,
      color: AppColors.primaryColor,
    );
consultantDevider()=> Divider(
height: 4.h,
color: AppColors.primaryColor,
);
