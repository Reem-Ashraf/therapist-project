import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:therapy/view/componant/core/icon_of_arrowback.dart';
import 'package:therapy/view/componant/core/text_field.dart';
import 'package:therapy/view/componant/image_path.dart';

import '../../../../componant/app_color.dart';
import '../../doctor_tabs/doctor_profile_tap/profile_page/edit_personal_info/ccomponant/edit_personal_info_text_field.dart';
import 'componant/rigester_page_componant.dart';

class DoctorRigesterPage extends StatefulWidget {
  @override
  State<DoctorRigesterPage> createState() => _SignUpState();
}

class _SignUpState extends State<DoctorRigesterPage> {
  bool isCheck = false;
  bool isSecure = true;

  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var nationalityId = TextEditingController();
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  List<String> townIteams = ["single", "married", "divorced", "widowed"];
  String? townStatus;
  List<String> countryIteams = ["single", "married", "divorced", "widowed"];
  String? countryStatus;
  List<String> genderIteams = [
    'Male',
    'Female',
  ];
  String? genderValue;
  Future<void> showSimpleDialog() async {
    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            // <-- SEE HERE
            children: <Widget>[
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                width: 150.w,
                // height: 100.h,
                child: SfCalendar(
                  cellBorderColor: AppColors.completeDataIconColor,
                  view: CalendarView.month,
                  // dataSource: MeetingDataSource(_getDataSource()),
                  monthViewSettings: MonthViewSettings(
                    appointmentDisplayMode:
                        MonthAppointmentDisplayMode.appointment,
                  ),
                ),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Image(
                image: AssetImage("assets/images/Untitled-1-01.png"),
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    arrowBack(onTap: () {
                      Navigator.pop(context);
                    }),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      "New Doctor",
                      style: TextStyle(
                          color: AppColors.textColor, fontSize: 25.sp),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    appTextField(
                        controller: nameController,
                        labelText: "Name",
                        type: TextInputType.name,
                        prefixIcon: Icon(Icons.person)),
                    appTextField(
                        controller: nationalityId,
                        labelText: "Nationalty ID",
                        type: TextInputType.number,
                        prefixIcon: Icon(Icons.card_membership_outlined)),
                    // SizedBox(height: .5.h,),
                    appTextField(
                        controller: phoneController,
                        labelText: "Phone Number",
                        type: TextInputType.number,
                        prefixIcon: Icon(Icons.phone_iphone_outlined)),
                    appTextField(
                        controller: emailController,
                        labelText: "Email",
                        type: TextInputType.emailAddress,
                        prefixIcon: Icon(Icons.email_outlined)),
                    //SizedBox(height: .5.h,),
                    TextFormField(
                      obscureText: isSecure,
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(
                          Icons.lock,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(isSecure
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              isSecure = !isSecure;
                            });
                          },
                        ),
                        //border: InputBorder.none
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This field musn't empty";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      width: 43.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                         Image(image: AssetImage(AppImages.greyMaleFemaleImage),height: 4.h,),
                          SizedBox(
                            width: .5.w,
                          ),
                          Container(
                            width: 60.w,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                  underline:
                                      Container(color: Colors.transparent),
                                  padding: EdgeInsets.only(right: 5, left: 5),

                                  //isExpanded: true,

                                  hint: Text("Gender"),

                                  // Initial Value

                                  value: genderValue,

                                  // Down Arrow Icon

                                  iconDisabledColor: Colors.transparent,
                                  iconEnabledColor: Colors.transparent,

                                  //  icon: const Icon(Icons.keyboard_arrow_down),

                                  // Array list of items

                                  items: genderIteams!.map((item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item as String),
                                    );
                                  }).toList(),

                                  // After selecting the desired option,it will

                                  // change button value to selected value

                                  onChanged: (newValue) {
                                    setState(() {
                                      genderValue = newValue;
                                    });
                                    print(newValue);
                                  },),
                            ),
                          ),
                        ],
                      ),
                    ),
                    div(),
                    buildRigesterDateDoctorInfoIteams(
                      value: townStatus,
                      list: townIteams,
                      onChange: (newValue) {
                        setState(() {
                          townStatus = newValue;
                        });
                        print(newValue);
                      },
                      txt: "Town",
                      icon: Icons.location_city_outlined,
                    ),
                    div(),
                    buildRigesterDateDoctorInfoIteams(
                      value: countryStatus,
                      list: countryIteams,
                      onChange: (newValue) {
                        setState(() {
                          countryStatus = newValue;
                        });
                        print(newValue);
                      },
                      txt: "Country",
                      icon: Icons.location_on_outlined,
                    ),
                    div(),
                    InkWell(
                      onTap: () {
                        showSimpleDialog();
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 7.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.calendar_month_sharp,
                              color: AppColors.primaryColor,
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text("Date",
                                style: TextStyle(
                                  color: AppColors.CameraIconColor,
                                  fontSize: 13.sp,
                                ))
                          ],
                        ),
                      ),
                    ),
                    div(),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      "Please Enter a Valid Mobile Number (Only Nine Digits) ",
                      style: TextStyle(
                          color: AppColors.verificationCodeText,
                          fontSize: 10.sp),
                    ),
                    Row(
                      children: [
                        Checkbox(
                            shape: CircleBorder(),
                            value: isCheck,
                            onChanged: (value) {
                              setState(() => isCheck = value!);
                            }),
                        Text(
                          "I agree to the Privacy Policy and Terms of Use",
                          style: TextStyle(fontSize: 10.sp),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    InkWell(
                      onTap: () {
                        if (formkey.currentState!.validate()) {
                          print("${nameController.text}");
                          print("${emailController.text}");
                          print("${nationalityId.text}");
                          print("${phoneController.text}");
                          print("${passwordController.text}");
                        }
                      },
                      child: Center(
                        child: Container(
                          width: 80.w,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.scaffoldColor),
                          child: Center(
                            child: Text("Next",
                                style: GoogleFonts.poppins(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
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
    );
  }
}
