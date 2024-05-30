
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/pages/register/bloc/register_events.dart';
import 'package:flutter_shop/pages/register/bloc/register_states.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {

  RegisterBloc() : super(const RegisterState()) {
    on<UserNameChanged>((_onUserNameChanged));
    on<EmailChanged>((_onEmailChanged));
    on<PasswordChanged>((_onPasswordChanged));
    on<RePasswordChanged>((_onRePasswordChanged));
  }

  void _onUserNameChanged(
      UserNameChanged event,
      Emitter<RegisterState> emit,
      ) {
    emit(state.copyWith(username: event.username));
  }

  void _onEmailChanged(
      EmailChanged event,
      Emitter<RegisterState> emit,
      ) {
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChanged(
      PasswordChanged event,
      Emitter<RegisterState> emit,
      ) {
    emit(state.copyWith(password: event.password));
  }

  void _onRePasswordChanged(
      RePasswordChanged event,
      Emitter<RegisterState> emit,
      ) {
    emit(state.copyWith(repassword: event.repassword));
  }


}