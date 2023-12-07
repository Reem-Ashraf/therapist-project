import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:therapy/view/componant/app_color.dart';
class DoctorVerificationCodePage extends StatelessWidget {
  const DoctorVerificationCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Image(image: AssetImage("assets/images/Untitled-1-01.png"),fit: BoxFit.cover,),
              SizedBox(height: 3.h,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Verify the phone number",style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 1.h,),
                    Text("You will receive an activation email within a minute",style: TextStyle(
                        fontSize: 11.sp,
                        color:AppColors.verificationCodeText
                    ),),
                    SizedBox(height: 5.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 18.w,
                          child: TextFormField(
                            onSaved: (pin1){},
                            decoration: const InputDecoration(
                                hintText: "0"
                            ),
                            onChanged: (value){
                              if(value.length==1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly],

                          ),

                        ),
                        SizedBox(
                          width: 18.w,
                          child: TextFormField(
                            onSaved: (pin2){},
                            decoration: const InputDecoration(
                                hintText: "0"
                            ),
                            onChanged: (value){
                              if(value.length==1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly],

                          ),
                        ),
                        SizedBox(
                          width: 18.w,
                          child: TextFormField(
                            onSaved: (pin3){},
                            decoration: const InputDecoration(
                                hintText: "0"
                            ),
                            onChanged: (value){
                              if(value.length==1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly],

                          ),
                        ),
                        SizedBox(
                          width: 18.w,
                          child: TextFormField(
                            onSaved: (pin4){},
                            decoration: const InputDecoration(
                                hintText: "0"
                            ),
                            onChanged: (value){
                              if(value.length==1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly],

                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 4.h,),
                    Center(child: RichText(text: TextSpan(
                        text: "You can request the code again in ",
                        style: TextStyle(color: AppColors.verificationCodeText),
                        children:  <TextSpan>[
                          TextSpan(text: "02:00",style:TextStyle(color: AppColors.textColor) )
                        ]
                    ),),),
                    SizedBox(height: 2.h,),
                    Center(child: InkWell(child: Text("Resend the activation code ",
                      style: TextStyle(color: AppColors.verificationCodeText),),)),
                    SizedBox(height: 37.h,),
                    InkWell(
                      onTap: (){},
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
