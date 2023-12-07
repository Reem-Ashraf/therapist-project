import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:toggle_switch/toggle_switch.dart';
class DoctorAppointmentPage extends StatelessWidget {
  const DoctorAppointmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 70),
              height: 14.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(25)),
                gradient: LinearGradient(
                    colors: [
                      Color(0xff25e4ca),
                      Color(0xff2ebee0),
                      Color(0xff2da8ec),
                      Color(0xff2f90fa)
                    ]
                ),
              ),
              child: Center(child: Text("My Appointment",style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 16.sp
              ),)),
            ),
            SizedBox(height: 5.h,),
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
              minHeight: 6.h,
              initialLabelIndex: 0,
              customWidths: [21.w, 21.w, 21.w,21.w],
              radiusStyle: true,
              totalSwitches: 4,
              labels: ['Comming', 'Current', 'Completed','Canceled'],
              onToggle: (index) {
                print('switched to: $index');
              },
            )
          ],
        ),
      ),
    );
  }
}
