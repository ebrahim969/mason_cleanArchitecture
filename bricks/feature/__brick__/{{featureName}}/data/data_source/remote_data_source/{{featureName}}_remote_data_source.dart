import'../../../../core/core/network/api_client.dart';

abstract interface class {{featureName.pascalCase()}}RemoteDataSource {}

class {{featureName.pascalCase()}}RemoteDataSourceImpl implements {{featureName.pascalCase()}}RemoteDataSource {
  final ApiClient dio;

  {{featureName.pascalCase()}}RemoteDataSourceImpl(this.dio);
}
