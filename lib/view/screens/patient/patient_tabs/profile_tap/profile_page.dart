import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:therapy/view/componant/image_path.dart';
import 'package:therapy/view/componant/core/profile_componant.dart';

import '../../../../componant/app_color.dart';
import 'edit_patiant_profile/edit_patient_profile.dart';

class DoctorProfilePage extends StatelessWidget {
  const DoctorProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldColor,
        body: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: [
                Container(
                  height: 20.h,
                  decoration: BoxDecoration(
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
                  padding: const EdgeInsets.all(85.0),
                  child: Center(
                      child: Text(
                    "My Profile",
                    style: TextStyle(color: AppColors.textColorWhite, fontSize: 15.sp),
                  )),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 110),
                  child: Center(
                    child: CircleAvatar(
                      backgroundColor: AppColors.textColorWhite,
                      maxRadius: 45,
                      child: CircleAvatar(
                        maxRadius: 40,
                        backgroundColor: AppColors.scaffoldColor,
                        child: Icon(
                          Icons.person,
                          color:AppColors.textColorWhite,
                          size: 50,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              "Hello 3658",
              style: TextStyle(color: AppColors.primaryColor, fontSize: 15.sp),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                padding: EdgeInsets.all(25),
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:AppColors.textColorWhite),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>EditPatientProfilePage()));
                      },
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage(AppImages.penLeft),
                            height: 3.h,
                          ),
                          SizedBox(
                            width: 2.5.w,
                          ),
                          text(txt: "Edit profile")
                        ],
                      ),
                    ),
                    divider(),
                    ProfileImageIteams(
                        function: () {},
                        txt: "My medicine file ",
                        icon: Icons.calendar_month),
                    divider(),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage(AppImages.peayment),
                            height: 4.h,
                          ),
                          SizedBox(
                            width: 2.5.w,
                          ),
                          text(txt: "Payment")
                        ],
                      ),
                    ),
                    divider(),
                    ProfileImageIteams(
                        function: () {},
                        txt: "Contact with us ",
                        icon: Icons.headset_mic),
                    divider(),
                    ProfileImageIteams(
                        function: () {},
                        txt: "Reset password ",
                        icon: Icons.replay),
                    divider(),
                    ProfileImageIteams(
                        function: () {},
                        txt: "Delete Account ",
                        icon: Icons.delete_sweep_rounded),
                    divider(),
                    ProfileImageIteams(
                        function: () {}, txt: "Log out ", icon: Icons.logout),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
