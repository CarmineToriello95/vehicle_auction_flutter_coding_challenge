class ServerException implements Exception {
  final String title;
  final String message;

  ServerException({required this.title, this.message = ""});
}

class CacheException implements Exception {}

class AuthenticationException implements Exception {}
