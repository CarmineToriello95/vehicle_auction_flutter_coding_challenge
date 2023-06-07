import 'dart:convert';

import 'package:vehicles_dealing_flutter_coding_challenge/core/error/exceptions.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/core/utils/api_utils.dart';
import 'package:vehicles_dealing_flutter_coding_challenge/features/auth/data/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../../../core/mocks/auth_client.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<UserModel> signInWithId({required String id});
}

@Injectable(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final http.Client client;

  AuthRemoteDataSourceImpl(this.client);

  @override
  Future<UserModel> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final body = jsonEncode({
      'email': email,
      'password': password,
    });

    final response = await MockSignIn.httpClientSignInWithEmailAndPassword.post(
      Uri.https(
        ApiUtils.authority,
        ApiUtils.signInWithEmailAndPasswordPath,
      ),
      body: body,
      headers: {'content-type': 'application/json'},
    );

    if (response.statusCode == 200) {
      return UserModel.fromJson(jsonDecode(response.body));
    } else {
      throw AuthenticationException();
    }
  }

  @override
  Future<UserModel> signInWithId({required String id}) async {
    final queryParameters = {
      'userId': id,
    };

    final uri = Uri.https(
      ApiUtils.authority,
      ApiUtils.signInWithUserIdPath,
      queryParameters,
    );

    final response = await MockSignIn.httpClientSignInWithUserId.get(
      uri,
      headers: {'content-type': 'application/json'},
    );

    if (response.statusCode == 200) {
      return UserModel.fromJson(jsonDecode(response.body));
    } else {
      throw AuthenticationException();
    }
  }
}
