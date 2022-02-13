abstract class LocalStorageRepository {
  /// get token user for http request
  Future<String?> get token;

  /// save token user when login
  Future<void> saveToken(String token);
}
