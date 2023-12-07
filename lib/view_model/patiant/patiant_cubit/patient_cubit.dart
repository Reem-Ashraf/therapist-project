import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../view/screens/patient/patient_tabs/appointments_tap/appointment_page.dart';
import '../../../view/screens/patient/patient_tabs/consultant_tap/consultant_page.dart';
import '../../../view/screens/patient/patient_tabs/home_tap/home_page.dart';
import '../../../view/screens/patient/patient_tabs/profile_tap/profile_page.dart';


part 'patient_state.dart';

class PatientCubit extends Cubit<PatientState> {
  PatientCubit() : super(PatientLayoutInitial());

  static PatientCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const ConsultantPage(),
    const AppointmentPage(),
    const DoctorProfilePage()
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(PatientLayoutChanged());
  }
}
