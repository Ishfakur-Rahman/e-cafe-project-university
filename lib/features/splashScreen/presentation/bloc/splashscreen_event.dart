part of 'splashscreen_bloc.dart';

abstract class SplashscreenEvent extends Equatable {
  const SplashscreenEvent();

  @override
  List<Object> get props => [];
}

class SetSplash extends SplashscreenEvent{}
