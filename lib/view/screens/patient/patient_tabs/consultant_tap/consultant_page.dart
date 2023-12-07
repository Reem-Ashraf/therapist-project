import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../componant/app_color.dart';
class ConsultantPage extends StatelessWidget {
  const ConsultantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.only(top: 33),
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
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: AppColors.textColorWhite,)),
                    Spacer(),
                    Text("Consultant",style: TextStyle(
                        color: AppColors.textColorWhite,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold
                    ),),
                    Spacer(),
                    Text(""),
                    Spacer()
                  ],
                ),
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
                          inactiveFgColor: AppColors.toggleFontColor,
                          activeFgColor: AppColors.toggleFontColor,
                           minWidth: 22.w,
                          minHeight:5.h,
                          initialLabelIndex: 0,
                          fontSize: 10.sp,
                          //customWidths: [40.w,40.w],
                          radiusStyle: true,
                          totalSwitches: 4,
                          labels: ['Psychiatrists', 'Psychologists','Education Specialist','Family Specialist'],
                          onToggle: (index) {
                            print('switched to: $index');
                          },
                        ),
                        SizedBox(height: 3.h,),
                        Expanded(
                          child: ListView.separated(
                              itemBuilder: (context,index)=>Center(
                                child:Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 50),
                                      child: Container(
                                        padding: EdgeInsets.only(left: 77,top: 25,right: 10),
                                        width: 74.w,
                                        height: 16.h,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: AppColors.scaffoldColor
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Hassan Ali",style: TextStyle(color: Color(0xff6cabf8),fontWeight: FontWeight.bold),),
                                            SizedBox(height: .5.h,),
                                            Text("Doctor",style:TextStyle(color: AppColors.welcomePageTextColors)),
                                            SizedBox(height: 3.h,),
                                            Container(
                                              height: .1.h,
                                              color: AppColors.primaryColor,
                                            ),
                                            SizedBox(height: 1.h,),
                                            Row(
                                              children: [
                                                Icon(Icons.money_outlined,size: 15.sp,color: AppColors.verificationCodeText,),
                                                Text("0 Reyal",style:TextStyle(color: AppColors.welcomePageTextColors)),
                                                SizedBox(width: 4.h,),
                                                RatingBar.builder(
                                                  initialRating: 1.75,
                                                  minRating: 1,
                                                  direction: Axis.horizontal,
                                                  allowHalfRating: true,
                                                  itemSize: 15,
                                                  itemCount: 5,
                                                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                                  itemBuilder: (context, _) => Icon(
                                                    Icons.star,
                                                    color: Colors.amber,
                                                  ),
                                                  onRatingUpdate: (rating) {
                                                    print(rating);
                                                  },
                                                )
                                              ],
                                            )

                                          ],
                                        ),
                                      ),
                                    ),
                                    CircleAvatar(
                                      child: CircleAvatar(
                                        backgroundColor: AppColors.textColorWhite,
                                        maxRadius: 60,
                                        child: CircleAvatar(
                                          maxRadius: 55,
                                          backgroundColor: AppColors.backGroundCircleAvataConsultant,
                                          child: Icon(
                                            Icons.person,
                                            color:AppColors.textColorWhite,
                                            size: 65.sp,
                                          ),
                                        ),
                                      ),
                                      maxRadius: 60,
                                      backgroundColor: AppColors.textColorWhite,
                                    ),
                                  ],
                                )
                              ),
                              separatorBuilder: (context,index)=>SizedBox(height: 2.h,),
                              itemCount: 5),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
