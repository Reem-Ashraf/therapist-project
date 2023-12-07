import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../componant/app_color.dart';
import 'componant/componant.dart';

class DoctorHomePage extends StatefulWidget {
  @override
  State<DoctorHomePage> createState() => _DoctorHomePageState();
}

class _DoctorHomePageState extends State<DoctorHomePage> {
  //const DoctorHomePage({Key? key}) : super(key: key);
  var nameBankController=TextEditingController();

  var ibamController=TextEditingController();

  var accountNameController=TextEditingController();

  bool isCheck=false;

var scaffoldKey =GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 15.h,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25)),
                      gradient: LinearGradient(colors: [
                        Color(0xff25e4ca),
                        Color(0xff2ebee0),
                        Color(0xff2da8ec),
                        Color(0xff2f90fa)
                      ]),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, top: 65),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                            color: Color(0xfffefcf8),
                            size: 25.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            scaffoldKey.currentState?.showBottomSheet((context) => Container(
                              width: double.infinity,
                              height: 93.h,
                              decoration: BoxDecoration(
                                color: AppColors.textColorWhite,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  CircleAvatar(
                                      child: IconButton(onPressed:(){
                                        Navigator.of(context).pop();

                                      } , icon: Icon(Icons.close,color: AppColors.textColorWhite,size: 22.sp,)),
                                    backgroundColor:Color(0xffc1c1c1) ,
                                    maxRadius: 20,
                                    ),
                                    Center(
                                      child: Text("Account Setting",
                                        style: TextStyle(
                                            color: AppColors.welcomePageTextColors,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.sp),),
                                    ),
                                    SizedBox(height: 5.h,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Text(
                                        "Please Enter Valid Bank Information",
                                        style: TextStyle(
                                            color: AppColors.primaryColor,
                                            fontSize: 12.sp),
                                      ),
                                    ),
                                    SizedBox(height: 2.h,),
                                    TextFieldSetting(controller: nameBankController, labelText: "Bank Name", type: TextInputType.name),
                                    SizedBox(height: 2.h,),
                                    TextFieldSetting(controller: ibamController, labelText: "International bank account number(IBAM)", type: TextInputType.number),
                                    SizedBox(height: 2.h,),
                                    TextFieldSetting(controller: accountNameController, labelText: "Account Name", type: TextInputType.name),
                                    SizedBox(height: 2.h,),
                                    Row(
                                      children: [
                                        ///not work
                                        Checkbox(
                                            shape: CircleBorder(),
                                            value: isCheck,
                                            onChanged: (value){
                                          setState(()=>isCheck=value!);

                                        }),
                                        Text("I agree to the Privacy Policy and Terms of Use",style: TextStyle(
                                            fontSize: 10.sp,
                                          color: AppColors.welcomePageTextColors
                                        ),)
                                      ],
                                    ),
                                    SizedBox(height: 25.h,),
                                    InkWell(
                                      onTap: () {
                                      },
                                      child: Center(
                                        child: Container(
                                          width: 80.w,
                                          height: 6.h,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(18),
                                            gradient: LinearGradient(colors: [
                                              Color(0xff25e4ca),
                                              Color(0xff2ebee0),
                                              Color(0xff2da8ec),
                                              Color(0xff2f90fa)
                                            ]),
                                          ),
                                          child: Center(
                                            child: Text("Create",
                                                style: TextStyle(
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
                            ),);

                          },
                          icon: Icon(Icons.settings,
                              color: Color(0xfffefcf8), size: 25.sp),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 35, top: 15),
                    color:AppColors.scaffoldColor,
                    height: 10.5.h,
                    width: 45.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                              color: AppColors.primaryColor, fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          "1235",
                          style: TextStyle(
                              color: AppColors.primaryColor, fontSize: 13.sp),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 134),
                    child: CircleAvatar(
                      backgroundColor: AppColors.textColorWhite,
                      maxRadius: 40,
                      child: CircleAvatar(
                        maxRadius: 35,
                        backgroundColor: AppColors.scaffoldColor,
                        child: Icon(
                          Icons.person,
                          color:AppColors.textColorWhite,
                          size: 50,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Welcome back  ",
                  style:
                      TextStyle(color: AppColors.primaryColor, fontSize: 14.sp),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Looking forward to more of your givin",
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HomePageCard(
                      text: "Notification",
                      icon: Icons.notifications_none,
                      color: Color(0xff2ee3c9)),
                  SizedBox(
                    width: 7.w,
                  ),
                  HomePageCard(
                      text: "Dates",
                      icon: Icons.calendar_month,
                      color: Color(0xff2e89fc))
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HomePageCard(
                      text: "Setting",
                      icon: Icons.settings,
                      color: Color(0xff2e89fc)),
                  SizedBox(
                    width: 7.w,
                  ),
                  HomePageCard(
                      text: "Wallet",
                      icon: Icons.wallet,
                      color: Color(0xff2ee3c9))
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Latest Comment",
                    style: TextStyle(color: AppColors.primaryColor, fontSize: 15.sp),
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
