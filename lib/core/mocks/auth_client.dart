import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

class MockSignIn {
  static final http.BaseClient httpClientSignInWithEmailAndPassword =
      MockClient((request) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final body = jsonDecode(request.body);
    if (body["email"] == "test@test.com" && body["password"] == "1234qwer") {
      final response = http.Response(
        jsonEncode({
          "id": "1a2b3c",
          "name": "test",
          "email": "test@test.com",
        }),
        200,
        request: request,
      );
      return response;
    }
    return http.Response(
      "",
      401,
      request: request,
    );
  });

  static final http.BaseClient httpClientSignInWithUserId =
      MockClient((request) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final userId = request.url.queryParameters["userId"];
    if (userId == "1a2b3c") {
      return http.Response(
        jsonEncode({
          "id": "1a2b3c",
          "name": "test",
          "email": "test@test.com",
        }),
        200,
        request: request,
      );
    }
    return http.Response(
      "",
      401,
      request: request,
    );
  });
}
