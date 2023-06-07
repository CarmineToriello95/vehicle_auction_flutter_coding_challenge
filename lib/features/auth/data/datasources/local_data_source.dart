import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: constant_identifier_names
const String _LOCAL_STORAGE_USER_ID_KEY = 'userId';

abstract class AuthLocalDataSource {
  String? retrieveUserId();

  Future<void> saveUserId({required String id});
}

@Injectable(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SharedPreferences sharedPreferences;

  AuthLocalDataSourceImpl(this.sharedPreferences);

  @override
  String? retrieveUserId() =>
      sharedPreferences.getString(_LOCAL_STORAGE_USER_ID_KEY);

  @override
  Future<void> saveUserId({required String id}) =>
      sharedPreferences.setString(_LOCAL_STORAGE_USER_ID_KEY, id);
}
