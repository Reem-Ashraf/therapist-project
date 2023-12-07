import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:therapy/view/componant/app_color.dart';
import 'package:therapy/view/componant/core/text_field.dart';

import '../../../../componant/core/icon_of_arrowback.dart';
class PatiantSignUpPage extends StatefulWidget {
  @override
  State<PatiantSignUpPage> createState() => _SignUpState();
}

class _SignUpState extends State<PatiantSignUpPage> {
  bool isCheck=false;
  bool isSecure=true;

  var phoneController=TextEditingController();
  var passwordController=TextEditingController();
  var nationalityId=TextEditingController();
  var emailController=TextEditingController();
  var nameController=TextEditingController();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    arrowBack(onTap: () {
                      Navigator.pop(context);
                    }),
                    SizedBox(height: 3.h,),
                    Text("New User",style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 25.sp
                    ),),
                    SizedBox(height: 2.h,),
                    appTextField(controller: nameController, labelText: "Name",
                        type: TextInputType.name,prefixIcon: Icon(Icons.person)),
                    appTextField(controller: nationalityId, labelText: "Nationalty ID",
                        type: TextInputType.number,prefixIcon: Icon(Icons.card_membership_outlined)),
                   // SizedBox(height: .5.h,),
                    appTextField(controller: phoneController, labelText: "Phone Number",
                        type: TextInputType.number,prefixIcon: Icon(Icons.phone_iphone_outlined)),
                    appTextField(controller: emailController, labelText: "Email", type: TextInputType.emailAddress,prefixIcon: Icon(Icons.email_outlined)),
                    //SizedBox(height: .5.h,),
                    TextFormField(
                      obscureText: isSecure,
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          labelText: "Password",
                          prefixIcon: Icon(Icons.lock,),
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
                          return "This field musn't empty";
                        }
                        return null;
                      },

                    ),
                    SizedBox(height: 1.h,),
                    Text("Please Enter a Valid Mobile Number (Only Nine Digits) ",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 10.sp
                    ),),
                    Row(
                      children: [
                        Checkbox(
                          shape: CircleBorder(),
                            value: isCheck, onChanged: (value){
                          setState(()=>isCheck=value!);

                        }),
                        Text("I agree to the Privacy Policy and Terms of Use",style: TextStyle(
                          fontSize: 10.sp
                        ),)
                      ],
                    ),
                    SizedBox(height: 12.h,),
                    InkWell(
                      onTap: (){
                        if (formkey.currentState!.validate()) {
                          print("${nameController.text}");
                          print("${emailController.text}");
                          print("${nationalityId.text}");
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
                            color: AppColors.scaffoldColor
                          ),
                          child: Center(
                            child: Text("Next",
                                style: GoogleFonts.poppins(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
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

    );
  }
}
