import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../view_model/doctor/doctor/doctor_cubit.dart';
import '../../../componant/app_color.dart';

class DoctorLayOutScreen extends StatelessWidget {
  const DoctorLayOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoctorCubit(),
      child: BlocConsumer<DoctorCubit, DoctorState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          DoctorCubit myCubit = DoctorCubit.get(context);
          return Scaffold(
            body: myCubit.pages[myCubit.currentIndex],
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38, spreadRadius: 0, blurRadius: 5),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: BottomNavigationBar(
                  items: const [
                    BottomNavigationBarItem(
                        icon: (Icon(
                          Icons.home_filled,
                        )),
                        label: 'Home'),
                    BottomNavigationBarItem(
                        icon: (Icon(
                          Icons.wallet,
                        )),
                        label: 'wallet'),
                    BottomNavigationBarItem(
                        icon: (Icon(
                          Icons.calendar_month,
                        )),
                        label: 'Appointment'),
                    BottomNavigationBarItem(
                        icon: (Icon(
                          Icons.person,
                        )),
                        label: 'Profile')
                  ],
                  elevation: 0,

                  // showSelectedLabels: true,
                  showUnselectedLabels: true,
                  currentIndex: myCubit.currentIndex,
                  selectedItemColor: Colors.black,
                  unselectedItemColor: AppColors.primaryColor,
                  onTap: (value) {
                    myCubit.changeIndex(value);
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
