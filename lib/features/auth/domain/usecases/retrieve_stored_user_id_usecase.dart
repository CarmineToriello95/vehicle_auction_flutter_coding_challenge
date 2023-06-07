import 'package:vehicles_dealing_flutter_coding_challenge/core/error/failures.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/core/usecases/usecase.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class RetrieveStoredUserIdUseCase extends UseCase<String?, NoParams> {
  final AuthRepository _authRepository;

  RetrieveStoredUserIdUseCase(this._authRepository);

  @override
  Future<Either<Failure, String?>> call(NoParams params) =>
      _authRepository.retrieveStoredUserId();
}
