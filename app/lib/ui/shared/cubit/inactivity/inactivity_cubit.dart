import 'package:meta/meta.dart';
import 'package:async/async.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'inactivity_state.dart';

@lazySingleton
class InactivityCubit extends Cubit<InactivityState> {
  final int _duration = 3;
  RestartableTimer? _timer;

  InactivityCubit() : super(TimeoutInitial()) {
    print('Timer started');
    start();
  }

  void start() => _timer = RestartableTimer(
        Duration(minutes: _duration),
        () => emit(TimeoutExpired()),
      );

  void reset() {
    print('Timer reset');
    _timer?.reset();
  }

  bool isActive() => _timer?.isActive ?? false;
}
