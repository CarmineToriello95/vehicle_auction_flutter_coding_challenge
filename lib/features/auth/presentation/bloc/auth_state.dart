import '../../domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/error/failures.dart';

part 'auth_state.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLoading,
    User? user,
    Failure? failure,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState();

  factory AuthState.isLoading() = Loading;

  factory AuthState.isAuthenticated({required User user}) = Authenticated;

  factory AuthState.failure({required Failure failure}) = FailureState;
}
