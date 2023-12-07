import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:therapy/view/componant/app_color.dart';
import 'package:therapy/view/componant/core/text_field_editprofile.dart';

import 'componant/edit_patient_build_iteams.dart';
class EditPatientProfilePage extends StatefulWidget {
  @override
  State<EditPatientProfilePage> createState() => _EditPatientProfileState();
}

class _EditPatientProfileState extends State<EditPatientProfilePage> {
  //const EditPatientProfile({Key? key}) : super(key: key);
  var countryController=TextEditingController();

  var townController=TextEditingController();

  var nameController=TextEditingController();

  var maritalStatusController=TextEditingController();

  var educationController=TextEditingController();

  var workController=TextEditingController();

  var inComeController=TextEditingController();

  bool value=true;

  var formkey = GlobalKey<FormState>();
  List<String> genderIteams = ['Male', 'Female',];
  String? genderValue ;
  List<String> maritalStatusIteams = ["single","married", "divorced" ,"widowed"];
  String?maritalStatus;
  List<String> educationIteams = ["uneducated", " primary " ,"middle"," secondary", "graduate","post-graduate"];
  String?educationStatus;
  List<String> employeeIteams = ["student ","officer", "retirednot","employed"];
  String?employeeStatus;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldColor,
        body: Form(
          key: formkey,
          child: Column(
            children: [
                Stack(
                  children: [
                    Container(
                      height: 20.h,
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
                    ),
                    Row(
                      children: [
                        IconButton(onPressed: (){
                          Navigator.pop(context);
                        }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
                        SizedBox(width: 30.w,),
                        Text("3658",style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 70),
                      child: Center(
                        child: Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.textColorWhite,
                              maxRadius: 55,
                              child: CircleAvatar(
                                maxRadius: 50,
                                backgroundColor: AppColors.scaffoldColor,
                                child: Icon(
                                  Icons.person,
                                  color:AppColors.textColorWhite,
                                  size: 60.sp,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10,bottom: 10),
                              child: CircleAvatar(
                                backgroundColor: Color(0xff4ccfc1),
                                maxRadius: 15,
                                child: CircleAvatar(
                                  maxRadius: 13,
                                  backgroundColor: AppColors.textColorWhite,
                                  child: Icon(
                                    Icons.linked_camera_outlined,
                                    color:AppColors.CameraIconColor,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              Expanded(
                child: SingleChildScrollView(

                  child: Column(
                    children: [
                      SizedBox(height: 3.h,),
                      EditProfileTextField(controller: nameController, labelText: "Name", type: TextInputType.text, text: 'Name'),
                      SizedBox(height: 2.h,),
                      buildUpdateIteams(value: genderValue, list: genderIteams, onChange:  ( newValue) {
                       setState(() {
                         maritalStatus=newValue;
                       });
                       print(newValue);
                     }, txt: 'Town', text: 'Town'),
                      SizedBox(height: 2.h,),
                      buildUpdateIteams(value: genderValue, list: genderIteams, onChange:  ( newValue) {
                        setState(() {
                          maritalStatus=newValue;
                        });
                        print(newValue);
                      }, txt: 'Country', text: 'Country'),
                      SizedBox(height: 2.h,),
                      Padding(
                    padding: const EdgeInsets.only(right: 20,left: 20),
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 7.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.textColorWhite
                      ),
                      child: Row(
                        children:<Widget> [
                          Padding(
                            padding: const EdgeInsets.only(top:10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Marital",style: TextStyle(
                                      color:AppColors.CameraIconColor,
                                      fontSize: 13.sp,
                                    ),),
                                    Text("Status",style: TextStyle(
                                      color:AppColors.CameraIconColor,
                                      fontSize: 13.sp,
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width:3.w,),
                          Container(
                            width: 60.w,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                underline: Container(color: Colors.transparent),
                                padding: EdgeInsets.only(right: 5,left: 5),

                                //isExpanded: true,
                                hint: Text("Marital Status"),
                                // Initial Value
                                value: maritalStatus,
                                // Down Arrow Icon
                                iconDisabledColor: Colors.transparent,
                                iconEnabledColor: Colors.transparent,
                                //  icon: const Icon(Icons.keyboard_arrow_down),
                                // Array list of items
                                items:  maritalStatusIteams.map((item1) {
                                  return DropdownMenuItem(
                                    value: item1,
                                    child: Text(item1),
                                  );

                                }).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: ( newValue) {
                                  setState(() {
                                    maritalStatus=newValue;
                                  });
                                  print(newValue);
                                },
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                      SizedBox(height: 2.h,),
                  buildUpdateIteams(value: educationStatus, list: educationIteams, onChange:  ( newValue) {
                    setState(() {
                      educationStatus=newValue;
                    });
                    print(newValue);
                  }, txt: 'Education', text: 'Education'),
                      SizedBox(height: 2.h,),
                      buildUpdateIteams(value: employeeStatus,
                          list: employeeIteams,
                          onChange:  ( newValue) {
                        setState(() {
                          employeeStatus=newValue;
                        });
                        print(newValue);
                      }, txt: ' Work', text: 'Work'),
                      SizedBox(height: 2.h,),
                      Padding(
                        padding: const EdgeInsets.only(right: 20,left: 20),
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          height: 7.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.textColorWhite
                          ),
                          child: Row(
                            children:<Widget> [
                              Padding(
                                padding: const EdgeInsets.only(top:10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Income",style: TextStyle(
                                          color:AppColors.CameraIconColor,
                                          fontSize: 13.sp,
                                        ),),
                                        Text("Level",style: TextStyle(
                                          color:AppColors.CameraIconColor,
                                          fontSize: 13.sp,
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width:3.w,),
                              Expanded(
                                child: TextFormField(
                                  controller: inComeController,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      hintText: "Income Level",
                                      hintStyle: TextStyle(
                                        color:AppColors.CameraIconColor,
                                        fontSize: 12.5.sp,

                                      )
                                  ),
                                ),
                              ),


                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h,),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 20,left: 20
                        ),
                        child: Row(
                          children: [
                            Transform.scale(
                              child: CupertinoSwitch(value: value, onChanged: (value){
                                setState(() {
                                  this.value=value;
                                });


                              }),
                              scale: 1.1,
                            ),
                            Spacer(),
                            Text("Enable anonymous mode",style: TextStyle(
                              color: AppColors.CameraIconColor,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold
                            ),),

                          ],
                        ),
                      ),
                      SizedBox(height: 5.h,),
                      InkWell(
                        onTap: (){

                        },
                        child: Center(
                          child: Container(
                            width: 80.w,
                            height: 6.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
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
                              child: Text("Udate",
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.textColorWhite)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 4.h,)
                    ],
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
