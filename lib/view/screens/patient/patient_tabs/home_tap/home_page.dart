import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../componant/app_color.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 15.h,
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
                ),
                 Padding(
                  padding: EdgeInsets.only(left: 19,top: 70),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: (){},
                        icon:Icon(Icons.notifications,color: Color(0xfffefcf8)),),
                      Spacer(),
                      Text(
                        "We Listen",
                        style: TextStyle(color: AppColors.textColorWhite, fontSize: 17.sp,fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(""),
                      Spacer()
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.h,),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 11),
                  child: Container(
                    padding: EdgeInsets.only(right: 55,top: 7),
                    color: AppColors.textColorWhite,
                    height: 7.5.h,
                    width: 47.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(color: AppColors.primaryColor,
                          fontSize: 13.sp),
                        ),
                        SizedBox(height: 1.h,),
                        Text(
                          "12355",
                          style: TextStyle(color: AppColors.primaryColor,
                          fontSize: 13.sp),
                        )

                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 134),
                  child: CircleAvatar(
                    backgroundColor:AppColors.textColorWhite,
                    maxRadius: 40,
                    child: CircleAvatar(
                      maxRadius: 35,
                      backgroundColor: AppColors.scaffoldColor,
                      child: Icon(Icons.person,color: AppColors.textColorWhite,size: 50,),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 4.h,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("We listen to you ! ",style: TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 17.sp
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("How we can help you ? ",style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.sp
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 30.h,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
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
                    SizedBox(height: 2.h,),
                    Text("Talk to the most distinguished consultant",style: TextStyle(
                      color: AppColors.textColorWhite,
                        fontSize: 12.sp,
                      fontWeight: FontWeight.bold
                    ),),
                    Text("Book now and join to a free  instance session",style: TextStyle(
                        color: AppColors.textColorWhite,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold
                    ),),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(left: 5,bottom: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: AppColors.textColorWhite
                      ),
                      height: 22.h,
                      child: Expanded(
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index)=>Center(
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                child: CircleAvatar(
                                  child: CircleAvatar(
                                    backgroundColor: AppColors.textColorWhite,
                                    maxRadius: 35,
                                    child: CircleAvatar(
                                      maxRadius: 40,
                                      backgroundColor: AppColors.scaffoldColor,
                                      child: Icon(
                                        Icons.person,
                                        color:AppColors.textColorWhite,
                                        size: 60.sp,
                                      ),
                                    ),
                                  ),
                                  maxRadius: 40,
                                  backgroundColor: AppColors.textColorWhite,
                                ),
                                maxRadius: 42,
                                backgroundColor: AppColors.scaffoldColor,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10,bottom: 10),
                                child: CircleAvatar(
                                  backgroundColor: Colors.green,
                                  maxRadius: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                            separatorBuilder: (context,index)=>SizedBox(width: 2.w,),
                            itemCount: 5),
                      ),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
