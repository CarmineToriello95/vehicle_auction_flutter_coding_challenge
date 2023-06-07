import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/user.dart';

abstract class AuthRepository {
  Future<Either<Failure, User>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  // To be used when the user already signed in once
  Future<Either<Failure, User>> signInWithUserId({
    required String id,
  });

  Future<Either<Failure, String?>> retrieveStoredUserId();

  Future<void> saveUserId({required String userId});
}
