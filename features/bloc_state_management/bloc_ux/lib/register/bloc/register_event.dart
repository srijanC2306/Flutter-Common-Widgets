abstract class RegisterEvent {}

class RegisterTextChangedEvent extends RegisterEvent {
  final String email;
  final String password;
  RegisterTextChangedEvent({required this.email, required this.password});
}

class RegisterButtonSubmittedEvent extends RegisterEvent {
  final String email;
  final String password;
  RegisterButtonSubmittedEvent({required this.email, required this.password});
}
