import '../data_source/remote_data_source/{{featureName}}_remote_data_source.dart';
import '../../domain/repository/{{featureName}}_repository.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entity/auth_entity.dart';


class {{featureName.pascalCase()}}RepositoryImpl implements {{featureName.pascalCase()}}Repository {
  final {{featureName.pascalCase()}}RemoteDataSource remoteDataSource;
  const {{featureName.pascalCase()}}RepositoryImpl (this.remoteDataSource);

  @override
  Future<Either<Failure, {{featureName.pascalCase()}}Entity>> post{{featureName.pascalCase()}}({required String userId}) {
    // TODO: implement postAuth
    throw UnimplementedError();
  }
}