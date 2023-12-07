import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../view/screens/doctor/doctor_tabs/doctor_appointment_tap/doctor_appointment.dart';
import '../../../view/screens/doctor/doctor_tabs/doctor_home_tap/doctor_home.dart';
import '../../../view/screens/doctor/doctor_tabs/doctor_profile_tap/profile_page/doctor_profile/doctor_profile.dart';
import '../../../view/screens/doctor/doctor_tabs/wallet_consultant_tap/wallet_consultant.dart';


part 'doctor_state.dart';

class DoctorCubit extends Cubit<DoctorState> {
  DoctorCubit() : super(DoctorLayoutInitial());

  static DoctorCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> pages = [
     DoctorHomePage(),
     WalletPage(),
     DoctorAppointmentPage(),
     DoctorProfilePage()
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(DoctorLayoutChanged());
  }
}
