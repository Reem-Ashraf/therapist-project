import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import '../../../../../../componant/app_color.dart';
import '../../../../../../componant/core/text_field_editprofile.dart';
import 'ccomponant/edit_personal_info_text_field.dart';
class EditPersonalDoctorInfoPage extends StatefulWidget {
  @override
  State<EditPersonalDoctorInfoPage> createState() => _EditPersonalDoctorInfoPageState();
}

class _EditPersonalDoctorInfoPageState extends State<EditPersonalDoctorInfoPage> {
  //const EditPersonalInfo({Key? key}) : super(key: key);
  var countryController=TextEditingController();

  var townController=TextEditingController();

  var nameController=TextEditingController();

  var dateController=TextEditingController();

  List<String> townIteams = ["single","married", "divorced" ,"widowed"];

  String?townStatus;

  List<String> countryIteams = ["single","married", "divorced" ,"widowed"];
  String?countryStatus;
  var formKey =GlobalKey<FormState>();

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
                  cellBorderColor: AppColors.completeDataIconColor,
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
        backgroundColor: AppColors.scaffoldColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 100),
                height: 22.h,
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
                child: Row(
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
                )
              ),
              SizedBox(height: 5.h,),
              TextFieldEditPersonalInfo(controller: nameController, labelText: "Name", type:TextInputType.name, text: "Name"),
              SizedBox(height: 4.h,),
              buildUpadteDateDoctorInfoIteams(value: townStatus, list: townIteams,
                  onChange: ( newValue) {
                    setState(() {
                      townStatus=newValue;
                    });
                    print(newValue);
                  }, txt: "Town", text: "Town"),
              SizedBox(height: 4.h,),
              buildUpadteDateDoctorInfoIteams(value: countryStatus, list: countryIteams,
                  onChange: ( newValue) {
                    setState(() {
                      countryStatus=newValue;
                    });
                    print(newValue);
                  }, txt: "Country", text: "Country"),
              SizedBox(height: 4.h,),
              InkWell(
                onTap: (){
                  showSimpleDialog();
                },
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  height: 7.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.textColorWhite
                  ),
                  child: Row(
                    children:<Widget> [
                      Text("Date",style: TextStyle(
                        color:AppColors.CameraIconColor,
                        fontSize: 13.sp,
                      ),),
                      SizedBox(width:3.w,),
                      Icon(Icons.calendar_month_sharp,color: AppColors.completeDataIconColor,),
                      Text("Date",style:TextStyle(
                        color:AppColors.CameraIconColor,
                        fontSize: 13.sp,
                      ))


                    ],
                  ),
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
                      child: Text("Update",
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
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
