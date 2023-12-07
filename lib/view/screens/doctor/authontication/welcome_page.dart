

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:therapy/view/componant/app_color.dart';
import 'package:therapy/view/componant/core/text_field.dart';
import 'package:toggle_switch/toggle_switch.dart';

class DoctorWelcomePage extends StatefulWidget {
  @override
  State<DoctorWelcomePage> createState() => _LoginState();
}

class _LoginState extends State<DoctorWelcomePage> {
  // const Login({Key? key}) : super(key: key);
  var phoneController=TextEditingController();

  var passwordController=TextEditingController();
  var formkey = GlobalKey<FormState>();
  bool isSecure=true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 40),
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xff25e4ca),
                  Color(0xff2ebee0),
                  Color(0xff2da8ec),
                  Color(0xff2f90fa)
                ]
            ),
          ),
          child: Column(
            children: [
              Text("Consultant",style: TextStyle(
                  color: AppColors.textColorWhite,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 3.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 22.h,
                    height: 50,
                    child: OutlinedButton(
                      onPressed: () {

                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color:AppColors.textColorWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),
                          side: MaterialStateProperty.all(BorderSide(

                            color: AppColors.textColorWhite,
                            width: 2.0,
                          ))),
                    ),
                  ),
                  SizedBox(width: 3.w,),
                  Container(
                    width: 43.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color:AppColors.textColorWhite
                    ),
                    child: MaterialButton(
                      height: 6.5.h,
                      onPressed: () {
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                            color:AppColors.welcomePageTextColors),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 4.h,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 11,left: 11),
                      height: 5.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                          color: AppColors.textColorWhite,
                        borderRadius: BorderRadius.circular(20)


                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: "Search",
                            prefixIcon: Icon(Icons.search)
                        ),

                      ),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt_outlined,color:AppColors.textColorWhite,size: 25.sp,))
                  ],
                ),
              ),
             Expanded(
               child: Container(
                 padding: EdgeInsets.all(20),
                 width: double.infinity,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(topRight:Radius.circular(70) ),
                     color: AppColors.textColorWhite
                 ),
                 child: Column(
                   //mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Consultant",style: TextStyle(
                       color:AppColors.welcomePageTextColors,
                       fontSize: 16.sp,
                       fontWeight: FontWeight.bold
                     ),),
                     Text("A selection of certified advisors for you",style: TextStyle(
                       color:AppColors.welcomePageTextColors,
                       fontSize: 13.sp,
                     ),),
                     SizedBox(height: 3.h,),
                     ToggleSwitch(
                       activeBorders: [
                         Border.all(
                             color: Color(0xffeeeeee),
                             width:1.w
                         )
                       ],
                       inactiveBgColor: Color(0xffeeeeee),
                       activeBgColor: [Colors.white],
                       inactiveFgColor: Colors.black,
                       activeFgColor: Colors.black,
                       // minWidth: 25.w,
                       minHeight:5.h,
                       initialLabelIndex: 0,
                       customWidths: [40.w,40.w],
                       radiusStyle: true,
                       totalSwitches: 2,
                       labels: ['Psychiatrists', 'Psychologists'],
                       onToggle: (index) {
                         print('switched to: $index');
                       },
                     )
                   ],
                 ),
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}

