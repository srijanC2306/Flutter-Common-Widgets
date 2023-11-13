abstract class RegisterState {}

class RegisterInitialState extends RegisterState {}

class RegisterValidState extends RegisterState {}

class RegisterInvalidState extends RegisterState {}

class RegisterLoadingState extends RegisterState {}

class RegisterErrorState extends RegisterState {
  final String errorMessage;

  RegisterErrorState({required this.errorMessage});
}
