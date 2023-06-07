abstract class Failure {
  final String title;
  final String? message;

  Failure({required this.title, this.message});
}

class ServerFailure extends Failure {
  ServerFailure({
    super.title = ErrorMessage.serverFailureTitle,
    super.message,
  });
}

class CacheFailure extends Failure {
  CacheFailure({
    super.title = ErrorMessage.cacheFailureTitle,
    super.message,
  });
}

class TimeOutFailure extends Failure {
  TimeOutFailure({
    super.title = ErrorMessage.timeOutErrorTitle,
    super.message,
  });
}

class ClientFailure extends Failure {
  ClientFailure({
    super.title = ErrorMessage.timeOutErrorTitle,
    super.message,
  });
}

class ErrorMessage {
  static const String timeOutErrorTitle = "REQUEST TIMED OUT";
  static const String serverFailureTitle = "SERVER ERROR";
  static const String cacheFailureTitle = "CACHE ERROR";
  static const String clientFailureTitle = "CLIENT ERROR";
}
