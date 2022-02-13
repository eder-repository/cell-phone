part of 'splash_bloc.dart';

 class SplashState extends Equatable {
  const SplashState._({
     this.status = AuthenticationStatus.unknown,
    
  });

const SplashState.unknown() : this._();

  const SplashState.authenticated()
      : this._(status: AuthenticationStatus.authenticated, );

  const SplashState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);


  
  final AuthenticationStatus status;


  @override
  List<Object> get props => [status];
}




