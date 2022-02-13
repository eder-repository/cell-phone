part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginEmailChangedEvent extends LoginEvent {
  const LoginEmailChangedEvent(this.email);
  final String email;

  @override
  List<Object> get props => [email];
}

class LoginPasswordChanged extends LoginEvent {
  const LoginPasswordChanged(this.password);
  final String password;

  @override
  List<Object> get props => [password];
}

class LoginSubmit extends LoginEvent {}
