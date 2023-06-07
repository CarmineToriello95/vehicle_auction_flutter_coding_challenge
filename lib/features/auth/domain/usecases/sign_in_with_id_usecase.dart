import 'package:vehicles_dealing_flutter_coding_challenge/core/error/failures.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auth/domain/repositories/auth_repository.dart';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../entities/user.dart';

@injectable
class SignInWithIdUseCase implements UseCase<User, SignInWithIdUseCaseParams> {
  final AuthRepository _authRepository;

  SignInWithIdUseCase(this._authRepository);

  @override
  Future<Either<Failure, User>> call(params) =>
      _authRepository.signInWithUserId(id: params.id);
}

class SignInWithIdUseCaseParams {
  final String id;

  SignInWithIdUseCaseParams({
    required this.id,
  });
}
