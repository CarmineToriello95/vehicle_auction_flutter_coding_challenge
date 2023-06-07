import 'package:vehicles_dealing_flutter_coding_challenge/core/usecases/usecase.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auth/domain/usecases/retrieve_stored_user_id_usecase.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auth/domain/usecases/sign_in_with_email_and_password_usecase.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auth/domain/usecases/sign_in_with_id_usecase.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auth/presentation/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/user.dart';

@singleton
class AuthManager extends Cubit<AuthState> {
  final SignInWithEmailAndPasswordUseCase _signInWithEmailAndPasswordUseCase;
  final SignInWithIdUseCase _signInWithIdUseCase;
  final RetrieveStoredUserIdUseCase _retrieveStoredUserIdUseCase;
  User? _user;

  AuthManager(
    this._signInWithEmailAndPasswordUseCase,
    this._signInWithIdUseCase,
    this._retrieveStoredUserIdUseCase,
  ) : super(AuthState.initial()) {
    _checkIfUserIdIsStoredLocally();
  }

  void _checkIfUserIdIsStoredLocally() async {
    final result = await _retrieveStoredUserIdUseCase.call(NoParams());
    result.fold(
      _handleFailureResult,
      _handleUserIdRetrievedResult,
    );
  }

  void signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    emit(AuthState.isLoading());
    final result = await _signInWithEmailAndPasswordUseCase
        .call(SignInWithEmailAndPasswordUseCaseParams(
      email: email,
      password: password,
    ));
    result.fold(
      _handleFailureResult,
      _handleAuthenticatedResult,
    );
  }

  void _handleFailureResult(Failure failure) {
    _user = null;
    emit(AuthState.failure(failure: failure));
  }

  void _handleAuthenticatedResult(User user) {
    _user = user;
    emit(AuthState.isAuthenticated(user: user));
  }

  void _handleUserIdRetrievedResult(String? userId) async {
    if (userId == null) return;
    emit(AuthState.isLoading());
    final result = await _signInWithIdUseCase.call(
      SignInWithIdUseCaseParams(id: userId),
    );
    result.fold(
      _handleFailureResult,
      _handleAuthenticatedResult,
    );
  }

  User? get user => _user;
}
