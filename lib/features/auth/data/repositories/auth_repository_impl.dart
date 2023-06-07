import 'package:vehicles_dealing_flutter_coding_challenge/core/error/exceptions.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/core/error/failures.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auth/data/datasources/local_data_source.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auth/data/datasources/remote_data_source.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auth/data/models/user_model.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  final AuthLocalDataSource authLocalDataSource;

  AuthRepositoryImpl(this.authRemoteDataSource, this.authLocalDataSource);

  @override
  Future<Either<Failure, UserModel>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userModel = await authRemoteDataSource.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      authLocalDataSource.saveUserId(id: userModel.id);
      return Right(userModel);
    } on AuthenticationException {
      return Left(ClientFailure(message: 'Invalid credentials'));
    }
  }

  @override
  Future<Either<Failure, UserModel>> signInWithUserId(
      {required String id}) async {
    try {
      final userModel = await authRemoteDataSource.signInWithId(
        id: id,
      );
      return Right(userModel);
    } on AuthenticationException {
      return Left(ClientFailure(message: 'Invalid credentials'));
    }
  }

  @override
  Future<Either<Failure, String?>> retrieveStoredUserId() {
    try {
      final userId = authLocalDataSource.retrieveUserId();
      return Future.value(Right(userId));
    } on Exception {
      return Future.value(Left(CacheFailure()));
    }
  }

  @override
  Future<void> saveUserId({required String userId}) =>
      authLocalDataSource.saveUserId(id: userId);
}
