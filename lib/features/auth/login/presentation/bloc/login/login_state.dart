part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState(
      {required this.email,
      required this.password,
      required this.message,
      required this.errorEmail,
      required this.errorPassword});

  final String email;
  final String password;
  final bool errorEmail;
  final bool errorPassword;
  final String message;

  static LoginState get initial => const LoginState(
        email: '',
        password: '',
        errorEmail: false,
        errorPassword: false,
        message: '',
      );

  LoginState copyWith({
    String? email,
    String? password,
    bool? errorEmail,
    bool? errorPassword,
    String? message,
  }) =>
      LoginState(
        email: email ?? this.email,
        password: password ?? this.password,
        errorEmail: errorEmail ?? this.errorEmail,
        errorPassword: errorPassword ?? this.errorPassword,
        message: message ?? this.message,
      );

  @override
  List<Object> get props =>
      [email, password, errorEmail, errorEmail, message, errorPassword];
}
