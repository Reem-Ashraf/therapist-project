// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/doctor/doctor_tabs/doctor_profile_tap/profile_page/edit_personal_info/edit_personal_info.dart';

part 'app_navigator.dart';

//add page routes here

appRoutes(context) {
  var routes = {
     ScreenNames.editPersonalInfo: (context) =>  EditPersonalDoctorInfoPage(),

  };
  return routes;
}

class ScreenNames {
  static const String editPersonalInfo = "editPersonalInfo";
}
