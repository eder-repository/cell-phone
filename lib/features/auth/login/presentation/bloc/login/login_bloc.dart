import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cell_phone/core/di/dependency_injection.dart';
import 'package:cell_phone/core/domain/repositories/local_storage_repository.dart';
import 'package:cell_phone/core/utils/utils.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial) {
    on<LoginPasswordChanged>((event, emit) async {
      try {
        if (!Utils.isValidPassword(event.password)) {
          emit(state.copyWith(errorPassword: true));
          return;
        } else {
          emit(state.copyWith(password: event.password, errorPassword: false));
        }
      } catch (e) {
        print(e);
      }
    });

    on<LoginEmailChangedEvent>((event, emit) async {
      try {
        if (!Utils.isValidEmail(event.email)) {
          emit(state.copyWith(
            errorEmail: true,
          ));
          return;
        } else {
          emit(state.copyWith(email: event.email, errorEmail: false));
        }
      } catch (e) {
        print(e);
      }
    });
  }

  final _repository = locator.get<LocalStorageRepository>();

  Future<bool> submit() async {
    if (state.email.isEmpty) {
      emit(state.copyWith(errorEmail: true));
      return false;
    } else if (state.password.isEmpty) {
      emit(state.copyWith(errorPassword: true));
      return false;
    } else {
      if (state.email == "ederzambranomero@gmail.com" &&
          state.password == "Eder18091997") {
        await _repository.saveToken("${state.email}/${state.password}");

        return true;
      } else {
        emit(state.copyWith(message: "Usuario Incorrecto"));
      }
    }
    return false;
  }
}
