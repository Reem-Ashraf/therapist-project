// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
// import 'package:therapy/view/componant/image_path.dart';
//
// import '../../../../componant/app_color.dart';
// import '../../../../componant/core/text_field.dart';
//
// class CompleteDoctorRegisterPage extends StatelessWidget {
//   // const CompleteDoctorRegister({Key? key}) : super(key: key);
//   var dateController = TextEditingController();
//   var genderController = TextEditingController();
//   var countryController = TextEditingController();
//   var townController = TextEditingController();
//   var formkey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Form(
//             key: formkey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Image(image: AssetImage(AppImages.appImage)),
//                 SizedBox(
//                   height: 5.h,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 25, left: 25),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Complete Data",
//                         style: TextStyle(
//                             color: AppColors.completeDataIconColor,
//                             fontSize: 23.sp,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         height: 3.h,
//                       ),
//                       appTextField(
//                         onTap: (){},
//                           controller: dateController,
//                           labelText: '15/5/2005',
//                           type: TextInputType.datetime,
//                           prefixIcon: Icon(
//                             Icons.calendar_month,
//                             color: AppColors.completeDataIconColor,
//                           )),
//                       appTextField(
//                           controller: genderController,
//                           labelText: 'gender',
//                           type: TextInputType.text,
//                           prefixIcon: Icon(
//                             Icons.female,
//                             color: AppColors.completeDataIconColor,
//                           )),
//                       appTextField(
//                           controller: countryController,
//                           labelText: 'country',
//                           type: TextInputType.text,
//                           prefixIcon: Icon(
//                             Icons.location_on_sharp,
//                             color: AppColors.completeDataIconColor,
//                           )),
//                       appTextField(
//                           controller: townController,
//                           labelText: 'Town',
//                           type: TextInputType.text,
//                           prefixIcon: Icon(
//                             Icons.location_city,
//                             color: AppColors.completeDataIconColor,
//                           )),
//                       SizedBox(
//                         height: 25.h,
//                       ),
//                       InkWell(
//                         onTap: () {
//                           if (formkey.currentState!.validate()) {
//                             print("${dateController.text}");
//                             print("${genderController.text}");
//                             print("${countryController.text}");
//                             print("${townController.text}");
//                           }
//                         },
//                         child: Center(
//                           child: Container(
//                             width: 80.w,
//                             height: 6.h,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(18),
//                               gradient: LinearGradient(colors: [
//                                 Color(0xff25e4ca),
//                                 Color(0xff2ebee0),
//                                 Color(0xff2da8ec),
//                                 Color(0xff2f90fa)
//                               ]),
//                             ),
//                             child: Center(
//                               child: Text("Create",
//                                   style: TextStyle(
//                                       fontSize: 15.sp,
//                                       fontWeight: FontWeight.bold,
//                                       color: AppColors.textColorWhite)),
//                             ),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
