import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:therapy/view/componant/app_color.dart';

class DoctorSchedulePage extends StatefulWidget {
  @override
  State<DoctorSchedulePage> createState() => _DoctorScheduleState();
}

class _DoctorScheduleState extends State<DoctorSchedulePage> {
  //const DoctorSchedule({Key? key}) : super(key: key);
  List<String> iteams = ['One', 'Two', 'Three', 'Four'];
  String? dropdownValue = "One";
  List<String> list = ['One', 'Two', 'Three', 'Four'];
  String? value = "One";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 50),
              height: 12.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
                gradient: LinearGradient(colors: [
                  Color(0xff25e4ca),
                  Color(0xff2ebee0),
                  Color(0xff2da8ec),
                  Color(0xff2f90fa)
                ]),
              ),
              child:  Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
                  SizedBox(width: 15.w,),
                  Text("Create Schedule",style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ),

            SizedBox(height: 3.h,),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context,index)=>Padding(
                    padding: const EdgeInsets.only(right: 20,left: 20),
                    child: Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                height: 28.h,
                decoration: BoxDecoration(
                      color:AppColors.scaffoldColor,
                      borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sunday",style: TextStyle(fontSize: 15.sp,color: AppColors.welcomePageTextColors,fontWeight: FontWeight.bold),),
                      SizedBox(height: 3.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Select start time",style: TextStyle(fontSize: 12.sp,color: AppColors.welcomePageTextColors),),
                              SizedBox(height: 1.h,),
                              Container(
                                height: 6.h,
                                width: 35.w,
                                decoration: BoxDecoration(
                                    color: AppColors.textColorWhite,
                                    borderRadius:
                                    BorderRadius
                                        .circular(15),
                                    border: Border.all(
                                        color:
                                        Colors.white)),
                                child:  DropdownButton(
                                  underline: Container(color: Colors.transparent),
                                  padding: EdgeInsets.only(right: 5,left: 5),
                                  isExpanded: true,
                                  hint: Text("Select Your Patient"),
                                  // Initial Value
                                  value: dropdownValue,
                                  // Down Arrow Icon
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  // Array list of items
                                  items:  iteams.map((item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );

                                  }).toList(),
                                  // After selecting the desired option,it will
                                  // change button value to selected value
                                  onChanged: ( newValue) {
                                    setState(() {
                                      dropdownValue=newValue;
                                    });
                                    print(newValue);
                                  },
                                ),
                              ),

                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Select end time",style: TextStyle(fontSize: 12.sp,color: AppColors.welcomePageTextColors),),
                              SizedBox(height: 1.h,),
                              Container(
                                height: 6.h,
                                width: 35.w,
                                decoration: BoxDecoration(
                                    color: AppColors.textColorWhite,
                                    borderRadius:
                                    BorderRadius
                                        .circular(15),
                                    border: Border.all(
                                        color:
                                        Colors.white)),
                                child:  DropdownButton(
                                  underline: Container(color: Colors.transparent),
                                  padding: EdgeInsets.only(right: 5,left: 5),
                                  isExpanded: true,
                                  hint: Text("Select Your Patient"),
                                  // Initial Value
                                  value: value,
                                  // Down Arrow Icon
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  // Array list of items
                                  items:  list.map((item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );

                                  }).toList(),
                                  // After selecting the desired option,it will
                                  // change button value to selected value
                                  onChanged: ( newValue) {
                                    setState(() {
                                      value=newValue;
                                    });
                                    print(newValue);
                                  },
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                      SizedBox(height:4.h,),
                      Padding(
                        padding: const EdgeInsets.only(right: 7,left: 7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Add rest time",style: TextStyle(fontSize: 13.sp,color: AppColors.welcomePageTextColors),),
                            CircleAvatar(
                              backgroundColor: Color(0xff2196f3),
                              child: IconButton(onPressed: () {  }, icon: Icon(Icons.add,size: 16.sp,color: AppColors.textColorWhite,),),
                              maxRadius: 17,
                            ),
                          ],),
                      )
                    ],
                ),
              ),
                  ),
                  separatorBuilder:(context,index)=> SizedBox(height: 3.h,),
                  itemCount: 5),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: InkWell(
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
                      child: Text("Create Schedule",
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
