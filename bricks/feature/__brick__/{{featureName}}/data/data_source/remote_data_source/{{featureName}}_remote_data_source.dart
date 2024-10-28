import '../../../../../core/network/dio_consumer.dart';

abstract interface class {{featureName.pascalCase()}}RemoteDataSource {}

class {{featureName.pascalCase()}}RemoteDataSourceImpl implements {{featureName.pascalCase()}}RemoteDataSource {
  final DioConsumer dio;

  {{featureName.pascalCase()}}RemoteDataSourceImpl(this.dio);
}
