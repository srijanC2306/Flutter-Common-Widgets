import 'package:bloc/bloc.dart';
import 'package:bloc_ux/register/bloc/register_event.dart';
import 'package:bloc_ux/register/bloc/register_state.dart';
import 'package:email_validator/email_validator.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitialState()) {
    on<RegisterTextChangedEvent>((event, emit) {
      if (event.email.isEmpty) {
        emit(RegisterErrorState(errorMessage: "Email cannot be empty"));
      } else if (EmailValidator.validate(event.email) == false) {
        emit(RegisterErrorState(errorMessage: "Please enter valid email"));
      } else if (event.password.length < 6) {
        emit(RegisterErrorState(
            errorMessage: "Password cannot be less than 6 character"));
      } else {
        emit(RegisterValidState());
      }
    });

    on<RegisterButtonSubmittedEvent>((event, emit) {
      emit(RegisterLoadingState());
    });
  }
}
