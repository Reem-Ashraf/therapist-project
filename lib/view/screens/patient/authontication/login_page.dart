

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:therapy/view/componant/app_color.dart';
import 'package:therapy/view/componant/core/icon_of_arrowback.dart';
import 'package:therapy/view/componant/core/text_field.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
 // const Login({Key? key}) : super(key: key);
  var phoneController=TextEditingController();

  var passwordController=TextEditingController();
  var formkey = GlobalKey<FormState>();
  bool isSecure=true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      //  backgroundColor: Color(0xfff3f4f4),
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Image(image: AssetImage("assets/images/Untitled-1-01.png"),fit: BoxFit.cover,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     arrowBack(onTap: (){
                       Navigator.pop(context);
                     }),
                      SizedBox(height: 4.h,),
                      Text("Login",style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 30.sp
                      ),),
                      SizedBox(height: 10.h,),
                      appTextField(controller: phoneController, labelText: "Phone Number",
                          type: TextInputType.number,prefixIcon: Icon(Icons.phone_iphone_outlined)),
                      SizedBox(height: 3.h,),
                      TextFormField(
                        obscureText: isSecure,
                        controller: passwordController,
                        //keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: "Password",
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(
                                isSecure ? Icons.visibility : Icons.visibility_off),
                            onPressed: (){
                              setState(() {
                                isSecure = !isSecure;
                              });
                            },
                          ),
                          //border: InputBorder.none
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "This field musn't be empty";
                          } else {

                          }
                          return null;
                        },

                      ),
                      SizedBox(height: 23.h,),
                      InkWell(
                        onTap: (){
                          if (formkey.currentState!.validate()) {
                            print("${phoneController.text}");
                            print("${passwordController.text}");
                          }

                        },
                        child: Center(
                          child: Container(
                            width: 80.w,
                            height: 6.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xff25e4ca),
                                    Color(0xff2ebee0),
                                    Color(0xff2da8ec),
                                    Color(0xff2f90fa)
                                  ]
                              ),
                            ),
                            child: Center(
                              child: Text("Login",
                                  style: GoogleFonts.poppins(
                                    fontSize: 15.sp,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.textColorWhite)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

