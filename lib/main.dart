import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:therapy/view/screens/doctor/authontication/sign_up/complete_register.dart';
import 'package:therapy/view/screens/doctor/authontication/sign_up/rigester_page.dart';
import 'package:therapy/view/screens/doctor/authontication/welcome_page.dart';
import 'package:therapy/view/screens/doctor/doctor_tabs/doctor_profile_tap/profile_page/doctor_profile/doctor_profile.dart';
import 'package:therapy/view/screens/doctor/doctor_tabs/doctor_profile_tap/profile_page/edit_personal_info/edit_personal_info.dart';
import 'package:therapy/view/screens/doctor/doctor_tabs/doctor_tabs_screen.dart';
import 'package:therapy/view/screens/doctor/doctor_tabs/wallet_consultant_tap/wallet_consultant.dart';
import 'package:therapy/view/screens/doctor/filter_screen/filter_screen.dart';
import 'package:therapy/view/screens/patient/authontication/sign_up/complete_rigester_patient/complete_rigester_patiant.dart';
import 'package:therapy/view/screens/patient/patient_tabs/consultant_tap/bokking_consult/booking_consult.dart';
import 'package:therapy/view/screens/patient/patient_tabs/consultant_tap/counseling_session/counseling_session.dart';
import 'package:therapy/view/screens/patient/patient_tabs/patient_tabs_screen.dart';
import 'package:therapy/view/screens/patient/patient_tabs/profile_tap/edit_patiant_profile/edit_patient_profile.dart';
import 'package:therapy/view/screens/welcome_page.dart';

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
  // await EasyLocalization.ensureInitialized();
  // runApp(
  //   EasyLocalization(
  //       supportedLocales: [Locale('en', 'US'), Locale('ar')],
  //       path: 'assets/translations', // <-- change the path of the translation files
  //       fallbackLocale: Locale('ar'),
  //       child: MyApp()
  //   ),
  // );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key,});
  //final Locale? currentLocale;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder:(context, orientation, deviceType)
      {
      return   MaterialApp(
        debugShowCheckedModeBanner:false ,
       home:FilterScreen(),
      );},
    );
  }
}

