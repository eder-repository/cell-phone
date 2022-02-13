import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cell_phone/core/di/dependency_injection.dart';
import 'package:cell_phone/core/domain/repositories/local_storage_repository.dart';
import 'package:equatable/equatable.dart';

part 'splash_event.dart';
part 'splash_state.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState.unknown()) {
    on<AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
    _authenticationStatusSubscription = status.listen(
      (status) => add(AuthenticationStatusChanged(status)),
    );
  }
  // final _auth = locator.get<AuthenticacionRepository>();
  late StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;

  final _controller = StreamController<AuthenticationStatus>();
  final _auth = locator.get<LocalStorageRepository>();

  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.authenticated;
    yield* _controller.stream;
  }

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();

    return super.close();
  }

  void _onAuthenticationStatusChanged(
    AuthenticationStatusChanged event,
    Emitter<SplashState> emit,
  ) async {
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        return emit(const SplashState.unauthenticated());
      case AuthenticationStatus.authenticated:
        final user = await _auth.token;

        return emit(user != null
            ? const SplashState.authenticated()
            : const SplashState.unauthenticated());
      default:
        return emit(const SplashState.unknown());
    }
  }
}
