import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:therapy/view/componant/image_path.dart';
import 'package:therapy/view/componant/core/profile_componant.dart';
import '../../../../../../componant/app_color.dart';
import '../doctor_Schedule/doctor_Schadule.dart';
import '../edit_personal_info/edit_personal_info.dart';

class DoctorProfilePage extends StatelessWidget {
  const DoctorProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff1f1f1),
        body: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: [
                Container(
                  height: 20.h,
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
                  padding: const EdgeInsets.all(85.0),
                  child: Center(
                      child: Text(
                    "My Profile",
                    style: TextStyle(color: Colors.white, fontSize: 15.sp),
                  )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 110),
                  child: Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      maxRadius: 45,
                      child: CircleAvatar(
                        maxRadius: 40,
                        backgroundColor: Color(0xfff1f1f1),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
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
                padding: const EdgeInsets.all(27),
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage(AppImages.penLeft),
                            height: 3.h,
                          ),
                          SizedBox(
                            width: 2.5.w,
                          ),
                          text(txt: "Edit professional profile")
                        ],
                      ),
                    ),
                    consultantDevider(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                     EditPersonalDoctorInfoPage()));
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
                          text(txt: "Edit personal profile")
                        ],
                      ),
                    ),
                    consultantDevider(),
                    ProfileImageIteams(
                        function: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorSchedulePage()));
                        },
                        txt: "Schedule",
                        icon: Icons.calendar_today_outlined),
                    consultantDevider(),
                    ProfileImageIteams(
                        function: () {},
                        txt: "Reset password ",
                        icon: Icons.replay),
                    consultantDevider(),
                    ProfileImageIteams(
                        function: () {},
                        txt: "Delete Account ",
                        icon: Icons.delete_sweep_rounded),
                    consultantDevider(),
                    ProfileImageIteams(
                        function: () {}, txt: "Log out ", icon: Icons.logout),
                    consultantDevider(),
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
