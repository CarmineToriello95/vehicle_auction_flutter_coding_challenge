import 'package:vehicles_dealing_flutter_coding_challenge/core/mocks/vehicle_auction_challenge.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

@Singleton()
class InputValidator with Validation {
  // Email input related
  final _email = BehaviorSubject<String>();
  Stream<String> get email$ => _email.stream.transform(emailValidate);
  void updateEmail(String value) => _email.sink.add(value);
  void clearEmail() => _email.sink.add('');
  String get getEmail => _email.hasValue ? _email.value : '';

  // Password input related
  final _password = BehaviorSubject<String>();
  Stream<String> get password$ => _password.stream.transform(passwordValidate);
  void updatePassword(String value) => _password.sink.add(value);
  void clearPassword() => _email.sink.add("");
  String get getPassword => _password.hasValue ? _password.value : '';

  // SignIn button related
  Stream<bool> get emailAndPasswordValid$ => Rx.combineLatest2(
        email$,
        password$,
        (email, password) => email.isNotEmpty && password.isNotEmpty,
      );

  // VIN related
  final _vin = BehaviorSubject<String>();
  Stream<String> get vin$ => _vin.stream.transform(vinValidate);
  void updateVIN(String value) => _vin.sink.add(value);
  void clearVIN() => _vin.sink.add("");
  String get getVIN => _vin.value;

  void disposeEmailAndPassword() {
    _email.close();
    _password.close();
  }

  void disposeAll() {
    disposeEmailAndPassword();
    _vin.close();
  }
}

mixin Validation {
  final emailValidate =
      StreamTransformer<String, String>.fromHandlers(handleData: (value, sink) {
    if (value.isEmpty) {
      sink.addError('This field cannot be empty');
    } else if (!value.contains('@')) {
      sink.addError('Insert a valid email');
    } else {
      sink.add(value);
    }
  });

  final passwordValidate =
      StreamTransformer<String, String>.fromHandlers(handleData: (value, sink) {
    if (value.isEmpty) {
      sink.addError('This field cannot be empty');
    } else if (value.length < 8) {
      sink.addError('The password must have at least 8 characters');
    } else {
      sink.add(value);
    }
  });

  final vinValidate =
      StreamTransformer<String, String>.fromHandlers(handleData: (value, sink) {
    if (value.isEmpty) {
      sink.addError('This field cannot be empty');
    } else if (value.length < VehiclesDealingChallenge.vinLength) {
      sink.addError(
          'The VIN must have ${VehiclesDealingChallenge.vinLength} characters');
    } else if (value.trimRight().contains(" ")) {
      sink.addError('This VIN cannot contain space characters');
    } else {
      sink.add(value);
    }
  });
}
