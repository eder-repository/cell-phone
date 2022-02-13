import 'package:cell_phone/core/data/data_source/secure_storage_data_source.dart';
import 'package:cell_phone/core/data/repositories/local_repositoriy_impl.dart';
import 'package:cell_phone/core/domain/repositories/local_storage_repository.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void injectDependencies() {
  locator.registerLazySingleton<LocalStorageRepository>(
      () => LocalStorageRepositoryImp(locator.get<SecureStorageDataSource>()));
  locator.registerLazySingleton<SecureStorageDataSource>(
      () => const SecureStorageDataSourceImp(FlutterSecureStorage()));
}
