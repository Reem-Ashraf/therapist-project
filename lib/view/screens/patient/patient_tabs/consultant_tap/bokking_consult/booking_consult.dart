import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';

import '../../../../../componant/app_color.dart';
class BookingConsult extends StatelessWidget {
  const BookingConsult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textColorWhite,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 70),
            height: 16.h,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),
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
            child:  Center(child: Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: AppColors.textColorWhite,)),
                SizedBox(width: 25.w,),
                Text("Booking",style: TextStyle(
                    color: AppColors.textColorWhite,fontSize: 16.sp,fontWeight: FontWeight.bold),),

              ],
            )),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 2.h,),
                Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20),
                  child: Container(
                    padding: EdgeInsets.only(top: 3,left: 10),
                    width: double.infinity,
                    height: 15.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.textColorWhite,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1.0, // soften the shadow
                          spreadRadius: 0.0, //extend the shadow
                          offset: Offset(
                            1, // Move to right 5  horizontally
                            2, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Center(
                              child: CircleAvatar(
                                backgroundColor: AppColors.textColorWhite,
                                maxRadius: 45,
                                child: CircleAvatar(
                                  maxRadius: 40,
                                  backgroundColor: AppColors.backGroundCircleAvataConsultant,
                                  child: Icon(
                                    Icons.person,
                                    color:AppColors.textColorWhite,
                                    size: 50,
                                  ),
                                ),
                              ),
                            ),
                           // SizedBox(height: 1.h,),
                            Text("Experiance:10",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.completeDataIconColor
                            ),)
                          ],
                        ),
                        SizedBox(width: 4.w,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Rawda Othman Yousef",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp),),
                            SizedBox(height: .3.h,),
                            Text("Psychologist",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp,color: AppColors.blueLight),),
                            SizedBox(height: .5.h,),
                            Text("Bachelor of psychology/Master of \nspesial education", maxLines: 2,
                                overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 8.sp,color: AppColors.black),),
                            SizedBox(height: .5.h,),
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
                            ),
                            SizedBox(height: .5.h,),
                            Text("5(90%,rate)", maxLines: 2,
                              overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9.sp,color: AppColors.primaryColor),),

                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 2.h,),
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
                        child: Text("Booking Now",
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColors.textColorWhite)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 1.h,),
                Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20),
                  child: Container(
                    padding: EdgeInsets.only(top: 5,left: 10),
                    width: double.infinity,
                    height: 26.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.textColorWhite,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1.0, // soften the shadow
                          spreadRadius: 0.0, //extend the shadow
                          offset: Offset(
                            1, // Move to right 5  horizontally
                            2, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Personal Profile",style: TextStyle(
                            color: AppColors.blueLight,fontSize: 15.sp,fontWeight: FontWeight.bold),),
                        SizedBox(height: 1.h,),
                        Text("Counseling services, psychological and behavioral therapy, psychological and counseling sessions",
                          style: TextStyle(fontSize: 10.5.sp,color: AppColors.CameraIconColor),),
                        SizedBox(height: .5.h,),
                        Text("Bachelor of psychology/Master of spesial education",style: TextStyle(fontSize: 10.5.sp,
                            color: AppColors.CameraIconColor),),
                        SizedBox(height: 1.h,),
                        Row(
                          children: [
                            Icon(Icons.language,color: AppColors.completeDataIconColor,size: 17.sp,),
                            SizedBox(width: 1.h,),
                            Text("Language: English / Arabic ",style: TextStyle(fontSize: 12.sp,color: AppColors.primaryColor),)
                          ],
                        ),
                         SizedBox(height: .5.h,),
                        Row(
                          children: [
                            Icon(Icons.flag_circle_outlined,color: AppColors.completeDataIconColor,size: 17.sp),
                            SizedBox(width: 1.h,),
                            Text("country : Saudi Arabia",style: TextStyle(fontSize: 12.sp,color: AppColors.primaryColor),)
                          ],
                        ),
                        SizedBox(height: .5.h,),
                        Row(
                          children: [
                            Icon(Icons.calendar_today_rounded,color: AppColors.completeDataIconColor,size: 17.sp),
                            SizedBox(width: 1.h,),
                            Text("the date of join: 3 years ago",style: TextStyle(fontSize: 12.sp,color: AppColors.primaryColor),)
                          ],
                        ),
                        SizedBox(height: .5.h,),
                        Row(
                          children: [
                            Icon(Icons.format_list_numbered_rtl_rounded,color: AppColors.completeDataIconColor,size: 17.sp),
                            SizedBox(width: 1.h,),
                            Text("Number of sessions: +500 session",style: TextStyle(fontSize: 12.sp,color: AppColors.primaryColor),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 2.h,),
                Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20),
                  child: Container(
                    padding: EdgeInsets.only(top: 5,left: 10),
                    width: double.infinity,
                    height: 26.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.textColorWhite,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1.0, // soften the shadow
                          spreadRadius: 0.0, //extend the shadow
                          offset: Offset(
                            1, // Move to right 5  horizontally
                            2, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Personal Profile",style: TextStyle(
                            color: AppColors.blueLight,fontSize: 15.sp,fontWeight: FontWeight.bold),),
                        SizedBox(height: 1.h,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              maxRadius: 40,
                              backgroundColor: AppColors.backGroundCircleAvataConsultant,
                              child: Icon(
                                Icons.person,
                                color:AppColors.textColorWhite,
                                size: 50,
                              ),
                            ),
                            SizedBox(width: 2.w,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Tafaul center",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp),),
                                Text("psychological and counseling sessions",
                                  maxLines: 6,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 10.5.sp,color: AppColors.CameraIconColor),),
                                SizedBox(height: .5.h,),
                                Text("Bachelor of psychology/Master of\n spesial education",style: TextStyle(fontSize: 10.5.sp,
                                    color: AppColors.CameraIconColor),),
                                SizedBox(height: 1.h,),
                                Row(
                                  children: [
                                    Icon(Icons.email_outlined,color: AppColors.completeDataIconColor,size: 17.sp),
                                    SizedBox(width: 1.h,),
                                    Text("radoth@gmail.com",style: TextStyle(fontSize: 12.sp,color: AppColors.primaryColor),)
                                  ],
                                ),
                                SizedBox(height:.5.h),
                                Row(
                                  children: [
                                    Icon(Icons.ring_volume_outlined,color: AppColors.completeDataIconColor,size: 17.sp),
                                    SizedBox(width: 1.h,),
                                    Text("010235697",style: TextStyle(fontSize: 12.sp,color: AppColors.primaryColor),)
                                  ],
                                ),
                                SizedBox(height:.5.h),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined,color: AppColors.completeDataIconColor,size: 17.sp),
                                    SizedBox(width: 1.h,),
                                    Text("Maadi, Nine Street, Building 5",style: TextStyle(fontSize: 12.sp,color: AppColors.primaryColor),)
                                  ],
                                ),

                              ],
                            )

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
