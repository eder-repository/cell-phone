import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// `SecureStorageDataSource` is abstact class for management the origins the
/// data local encripte  for Dependency Injection
abstract class SecureStorageDataSource {
  /// get token user for http request
  Future<String?> get token;

  /// save token user when login
  Future<void> saveToken(String token);

  ///remove token from user preferences
  Future<void> removeToken();
}

/// `SecureStorageDataSourceImp` is a implementation
/// of `SecureStorageDataSource`
class SecureStorageDataSourceImp implements SecureStorageDataSource {
  /// create an instance of `SecureStorageDataSourceImp`
  const SecureStorageDataSourceImp(this._storage);
  final FlutterSecureStorage _storage;

  final _tokenKey = 'token';

  @override
  Future<void> saveToken(String token) async =>
      await _storage.write(key: _tokenKey, value: token);

  @override
  Future<String?> get token async => await _storage.read(key: _tokenKey);

  @override
  Future<void> removeToken() async {
    await _storage.delete(key: _tokenKey);
  }
}
