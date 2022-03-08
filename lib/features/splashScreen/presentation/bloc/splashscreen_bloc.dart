import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'splashscreen_event.dart';
part 'splashscreen_state.dart';

class SplashscreenBloc extends Bloc<SplashscreenEvent, SplashscreenState> {
  final _timeController = StreamController<Timer>();

  StreamSink<Timer> get timerSink => _timeController.sink;

  Stream<Timer> get timerStream => _timeController.stream;

  @override
  void dispose() {
    _timeController.close();
  }

  SplashscreenBloc() : super(SplashscreenInitial()) {
    on<SplashscreenEvent>((event, emit) {
      
    });
  }
}
