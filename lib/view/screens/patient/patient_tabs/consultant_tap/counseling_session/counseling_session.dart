import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:therapy/view/componant/app_color.dart';

import 'componant/componant.dart';
class CounselingSessionPage extends StatefulWidget {
  const CounselingSessionPage({Key? key}) : super(key: key);

  @override
  State<CounselingSessionPage> createState() => _CounselingSessionPageState();
}
List<String> iteams = ['One', 'Two', 'Three', 'Four'];
String? dropdownValue = "One";
var complaintController=TextEditingController();
class _CounselingSessionPageState extends State<CounselingSessionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textColorWhite,
      appBar: AppBar(
        backgroundColor: AppColors.textColorWhite,
        centerTitle: true,
        toolbarHeight: 9.h,
        elevation: 1,
        title: Text("Counseling Session",style: TextStyle(color: AppColors.CameraIconColor,fontSize: 16.sp),),
        leading: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_back,color: AppColors.primaryColor,),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40,right: 25,left: 25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 8.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.greyLight,
                    borderRadius:
                    BorderRadius
                        .circular(15),
                    border: Border.all(
                        color:
                        Colors.white)),
                child:  DropdownButton(
                  underline: Container(color: Colors.transparent),
                  padding: EdgeInsets.only(right: 10,left: 10,top: 5),
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
              SizedBox(height: 5.h,),
              Text("Complaint summary",style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.CameraIconColor
              ),),
              SizedBox(height: 3.h,),
              TextFieldCounselingSession(controller: complaintController, type: TextInputType.text,),
              SizedBox(height: 8.h,),
              InkWell(
                onTap: (){
                },
                child: Center(
                  child: Container(
                    width: 50.w,
                    height: 7.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
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
                      child: Text("Consult Now",
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
    );
  }
}
