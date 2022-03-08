import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'useraccount_event.dart';
part 'useraccount_state.dart';

class UseraccountBloc extends Bloc<UseraccountEvent, UseraccountState> {
  UseraccountBloc() : super(UseraccountInitial()) {
    on<UseraccountEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
