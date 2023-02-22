part of 'inactivity_cubit.dart';

@immutable
abstract class InactivityState {}

class TimeoutInitial extends InactivityState {}

class TimeoutExpired extends InactivityState {}
