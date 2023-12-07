import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../componant/app_color.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}
int _value=1;

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                child: Text("Filter",style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight:FontWeight.bold,
                    color: AppColors.textColorWhite
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25,right: 20,left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Category ",style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.CameraIconColor,fontSize: 15.sp),),
                  SizedBox(height: 2.h,),
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
                  //customWidths: [40.w, 40.w,],
                  radiusStyle: true,
                  totalSwitches: 4,
                  labels: ['hello', 'hello','hello','hello'],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                  SizedBox(height: 4.h,),
                  Text("Price",style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.CameraIconColor,fontSize: 15.sp),),
                  SizedBox(height: 2.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Min",style: TextStyle(color: AppColors.CameraIconColor,fontSize: 12.sp)),
                          SizedBox(
                            width: 35.w,
                            child: TextFormField(
                              onSaved: (pin1){},
                              decoration: const InputDecoration(
                                  hintText: "0"
                              ),
                              onChanged: (value){
                                // if(value.length==1){
                                //   FocusScope.of(context).nextFocus();
                                //}
                              },
                              //textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly],

                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Max",style: TextStyle(color: AppColors.CameraIconColor,fontSize: 12.sp)),
                          SizedBox(
                            width: 35.w,
                            child: TextFormField(
                              onSaved: (pin1){},
                              decoration: const InputDecoration(
                                  hintText: "0"
                              ),
                              onChanged: (value){
                                // if(value.length==1){
                                //   FocusScope.of(context).nextFocus();
                                //}
                              },
                              //textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly],

                            ),
                          ),
                        ],
                      ),



                    ],
                  ),
                  SizedBox(height: 4.h,),
                  Text("Sort ",style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.CameraIconColor,fontSize: 15.sp),),
                  Row(
                    children: [
                      Radio(value: 1, groupValue: _value, onChanged:(value){
                        setState(() {
                          _value=value!;
                        });

                      }),
                      Text("Rating ",style: TextStyle(color: AppColors.CameraIconColor,fontSize: 15.sp),),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(value: 2, groupValue: _value, onChanged:(value){
                        setState(() {
                          _value=value!;
                        });

                      }),
                      Text(" Experiance",style: TextStyle(color: AppColors.CameraIconColor,fontSize: 15.sp),),
                    ],
                  ),
                  SizedBox(height: 22.h,),
                  InkWell(
                    onTap: (){
                    },
                    child: Center(
                      child: Container(
                        width: 80.w,
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
                          child: Text("Apply",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      ),
                    ),
                  )
              ],),
            )
          ],
        ),
      ),
    );
  }
}
