import '../data_source/remote_data_source/{{featureName}}_remote_data_source.dart';
import '../repository/{{featureName}}_repository.dart';

class {{featureName.pascalCase()}}RepositoryImpl implements {{featureName.pascalCase()}}Repository {
  final {{featureName.pascalCase()}}RemoteDataSource remoteDataSource;
  const {{featureName.pascalCase()}}RepositoryImpl(this.remoteDataSource);
}