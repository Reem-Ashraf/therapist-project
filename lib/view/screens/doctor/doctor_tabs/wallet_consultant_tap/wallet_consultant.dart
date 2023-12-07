import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:therapy/view/componant/app_color.dart';
import 'package:toggle_switch/toggle_switch.dart';
class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 50),
              width: double.infinity,
              height: 13.h,
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
              child: Center(
                child: Text("My Wallet",style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight:FontWeight.bold,
                  color: AppColors.textColorWhite
                ),),
              ),
            ),
            SizedBox(height: 7.h,),
            Padding(
              padding: const EdgeInsets.only(right: 20,left: 20),
              child: Container(
                padding: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: 30.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.textColorWhite,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        1.0, // Move to right 5  horizontally
                        1.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: Text("Current balance (S.R)",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp
                      ),),
                    ),
                    SizedBox(height: 2.h,),
                    Center(
                      child: Text("My balance:  0 S.R",style: TextStyle(
                        color: AppColors.blueLight,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp
                      ),),
                    ),
                    SizedBox(height: 2.h,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text("Bank Name:",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp
              )),
                    ),
                    SizedBox(height: 1.h,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text("Account Number:",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp
                      )),
                    ),
                    SizedBox(height: 4.h,),
                    InkWell(
                      onTap: (){
                      },
                      child: Center(
                        child: Container(
                          width: 70.w,
                          height: 6.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
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
                            child: Text("Balance Withdrawal",
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
            ),
            SizedBox(height: 4.h,),
            ToggleSwitch(
              activeBorders: [
                Border.all(
                    color: Color(0xffeeeeee),
                    width:1.w
                )
              ],
              inactiveBgColor: Color(0xffeeeeee),
              activeBgColor: [AppColors.textColorWhite],
              inactiveFgColor: AppColors.black,
              activeFgColor: AppColors.black,
               //minWidth: 30.w,
              minHeight: 6.h,
              initialLabelIndex: 0,
              customWidths: [40.w, 40.w,],
              radiusStyle: true,
              totalSwitches: 2,
              labels: ['Withdrawals', 'Resnt Profit',],
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