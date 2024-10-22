import '../data_source/remote_data_source/{{featureName}}_remote_dataSource.dart';

class {{featureName.pascalCase()}}RepositoryImpl with HandlingException implements {{featureName.pascalCase()}}Repository {
  final RemoteDataSource remoteDataSource;
  const {{featureName.pascalCase()}}RepositoryImpl(this.remoteDataSource);
}