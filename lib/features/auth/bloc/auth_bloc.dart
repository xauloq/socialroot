import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'package:socialroot/features/auth/bloc/auth_event.dart';
part 'package:socialroot/features/auth/bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthLoading());
      await Future.delayed(const Duration(seconds: 2));

      if (event.email == "user@example.com" && event.password == "password") {
        emit(AuthSuccess());
      } else {
        emit(AuthFailure(error: "Hibás email vagy jelszó"));
      }
    });
  }
}