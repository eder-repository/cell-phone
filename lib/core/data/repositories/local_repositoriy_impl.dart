import 'package:cell_phone/core/data/data_source/secure_storage_data_source.dart';
import 'package:cell_phone/core/domain/repositories/local_storage_repository.dart';

/// `LocalStorageRepositoryImp` is a implementation of `LocalStorageRepository`
class LocalStorageRepositoryImp implements LocalStorageRepository {
  /// create an instance of `LocalStorageRepositoryImp`
  const LocalStorageRepositoryImp(this._storageDataSource);
  final SecureStorageDataSource _storageDataSource;

  @override
  Future<void> saveToken(String token) => _storageDataSource.saveToken(token);

  @override
  Future<String?> get token async => await _storageDataSource.token;

  @override
  Future<void> removeToken() => _storageDataSource.removeToken();
}
