part of 'patient_cubit.dart';

@immutable
abstract class PatientState {}

class PatientLayoutInitial extends PatientState {}

class PatientLayoutChanged extends PatientState {}
