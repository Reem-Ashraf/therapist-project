import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget appTextField({
  required TextEditingController controller,
  required String labelText,
  required TextInputType type,
  bool isSecure=true,
  Icon? prefixIcon,
  Widget? suffixIcon,
  VoidCallback? onTap


})=>TextFormField(
  onTap: onTap,
  obscureText: isSecure,
  controller: controller,
  keyboardType:type ,
  decoration: InputDecoration(
    labelText: labelText,
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
),
validator: (value) {
if (value!.isEmpty) {
return "This field musn't empty";
}
return null;}

);