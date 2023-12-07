import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:therapy/view/componant/app_color.dart';
import 'package:therapy/view/componant/core/profile_componant.dart';
import 'package:therapy/view/componant/image_path.dart';
import 'package:therapy/view/screens/patient/authontication/sign_up/complete_rigester_patient/componant/complete_rigester_patient_coponant.dart';

import '../../../../../componant/core/text_field.dart';

class CompletePatiantRegisterPage extends StatefulWidget {
  @override
  State<CompletePatiantRegisterPage> createState() => _CompletePatiantRegisterPageState();
}

class _CompletePatiantRegisterPageState extends State<CompletePatiantRegisterPage> {
  // const CompleteDoctorRegister({Key? key}) : super(key: key);
  var dateController = TextEditingController();

  var genderController = TextEditingController();

  var countryController = TextEditingController();

  var townController = TextEditingController();

  var relationController = TextEditingController();

  var collageController = TextEditingController();

  var intermediateController = TextEditingController();

  var unemployedController = TextEditingController();

  var formkey = GlobalKey<FormState>();

  List<String> genderIteams = ['Male', 'Female',];
  String? genderValue ;
  List<String> maritalStatusIteams = ["single","married", "divorced" ,"widowed"];
  String?maritalStatus;
  List<String> educationIteams = ["uneducated", " primary " ,"middle"," secondary", "graduate","post-graduate"];
  String?educationStatus;
  List<String> employeeIteams = ["student ","officer", "retirednot","employed"];
  String?employeeStatus;
  String? item;

  List<String> list = ['One', 'Two', 'Three', 'Four'];

  String? value = "One";

  Future<void> showSimpleDialog() async {
    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog( // <-- SEE HERE
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                ),
                width: 150.w,
               // height: 100.h,
                child: SfCalendar(
                  cellBorderColor: Colors.orange,
                  view: CalendarView.month,
                  // dataSource: MeetingDataSource(_getDataSource()),
                  monthViewSettings: MonthViewSettings(
                    appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,

                  ),

                ),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(image: AssetImage(AppImages.appImage)),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25, left: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Complete Data",
                        style: TextStyle(
                            color: AppColors.completeDataIconColor,
                            fontSize: 23.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      InkWell(
                        onTap: (){
                          showSimpleDialog();
                        },
                        child: Row(
                          children: [
                            Icon(Icons.calendar_month_sharp,color: AppColors.completeDataIconColor,),
                            SizedBox(width: 3.w,),
                            Text("Date",style: TextStyle(
                              color: AppColors.CameraIconColor,
                              fontSize: 14.sp
                            ),),
                          ],
                        ),
                      ),
                      SizedBox(height: 2.h,),
                      container(),
                      buildComleteDataRegisterIteams(
                          image: AppImages.maleFemaleImage, value: genderValue,
                          list: genderIteams,
                          onChange: ( newValue) {
                            setState(() {
                              genderValue=newValue;
                            });
                            print(newValue);
                          }, txt: 'Gender'),
                     container(),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color:AppColors.completeDataIconColor,
                          ),
                          SizedBox(width: .5.w,),
                          Container(
                            width: 60.w,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                underline: Container(color: Colors.transparent),
                                padding: EdgeInsets.only(right: 5,left: 5),

                                //isExpanded: true,
                                hint: Text("Country"),
                                // Initial Value
                                value: genderValue,
                                // Down Arrow Icon
                                iconDisabledColor: Colors.transparent,
                                iconEnabledColor: Colors.transparent,
                                //  icon: const Icon(Icons.keyboard_arrow_down),
                                // Array list of items
                                items:  genderIteams.map((item1) {
                                  return DropdownMenuItem(
                                    value: item1,
                                    child: Text(item1),
                                  );

                                }).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: ( newValue) {
                                  setState(() {
                                    genderValue=newValue;
                                  });
                                  print(newValue);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      container(),
                      Row(
                        children: [
                        Icon(
                        Icons.location_city,
                        color:AppColors.completeDataIconColor,
                        ),
                          SizedBox(width: .5.w,),
                          Container(
                            width: 60.w,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                underline: Container(color: Colors.transparent),
                                padding: EdgeInsets.only(right: 5,left: 5),

                                //isExpanded: true,
                                hint: Text("Town"),
                                // Initial Value
                                value: genderValue,
                                // Down Arrow Icon
                                iconDisabledColor: Colors.transparent,
                                iconEnabledColor: Colors.transparent,
                                //  icon: const Icon(Icons.keyboard_arrow_down),
                                // Array list of items
                                items:  genderIteams.map((item1) {
                                  return DropdownMenuItem(
                                    value: item1,
                                    child: Text(item1),
                                  );

                                }).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: ( newValue) {
                                  setState(() {
                                    genderValue=newValue;
                                  });
                                  print(newValue);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      container(),
                      buildComleteDataRegisterIteams(
                          image: AppImages.MaritalStatusImage,
                          value: maritalStatus, list: maritalStatusIteams,
                          onChange:  ( newValue) {
                            setState(() {
                              maritalStatus=newValue;
                            });
                            print(newValue);
                          }, txt: 'Marital Status'),
                      container(),
                      buildComleteDataRegisterIteams(
                          image: AppImages.educationStatusImage,
                          value: educationStatus, list: educationIteams,
                          onChange: ( newValue) {
                            setState(() {
                              educationStatus=newValue;
                            });
                            print(newValue);
                          }, txt: "Education"),
                      container(),
                    buildComleteDataRegisterIteams(
                        image: AppImages.ProffisionalStatusImage,
                        value: employeeStatus, list: employeeIteams,
                        onChange: ( newValue) {
                          setState(() {
                            employeeStatus=newValue;
                          });
                          print(newValue);
                        }, txt: "Professional Status"),
                      container(),
                      SizedBox(
                        height: 14.h,
                      ),
                      InkWell(
                        onTap: () {
                        },
                        child: Center(
                          child: Container(
                            width: 80.w,
                            height: 6.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              gradient: LinearGradient(colors: [
                                Color(0xff25e4ca),
                                Color(0xff2ebee0),
                                Color(0xff2da8ec),
                                Color(0xff2f90fa)
                              ]),
                            ),
                            child: Center(
                              child: Text("Create",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// --- Button Widget --- //
