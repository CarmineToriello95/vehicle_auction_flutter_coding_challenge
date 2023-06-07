import 'package:vehicles_dealing_flutter_coding_challenge/core/error/failures.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/core/usecases/usecase.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../entities/user.dart';

@injectable
class SignInWithEmailAndPasswordUseCase
    implements UseCase<User, SignInWithEmailAndPasswordUseCaseParams> {
  final AuthRepository _authRepository;

  SignInWithEmailAndPasswordUseCase(this._authRepository);

  @override
  Future<Either<Failure, User>> call(params) =>
      _authRepository.signInWithEmailAndPassword(
        email: params.email,
        password: params.password,
      );
}

class SignInWithEmailAndPasswordUseCaseParams {
  final String email;
  final String password;

  SignInWithEmailAndPasswordUseCaseParams({
    required this.email,
    required this.password,
  });
}
