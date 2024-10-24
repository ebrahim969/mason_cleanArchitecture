part of 'injection_container.dart';

final sl = GetIt.instance;
Future<void> initDependencies() async {

  Hive.defaultDirectory = (await getApplicationCacheDirectory()).path;

  sl.registerLazySingleton(() => Hive.box(name: 'user'));
  sl.registerFactory(() => InternetConnection());
  sl.registerFactory(() => CacheHelper());
  sl<CacheHelper>().init();
  //Core

  sl.registerFactory<ConnectionChecker>(() => ConnectionCheckerImpl(sl()));
}
