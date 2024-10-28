import '../../../../core/error/failures.dart';
import '../../../../core/common/use_case/use_case.dart';
import '../repository/{{featureName}}_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../entity/{{featureName}}_entity.dart';

class {{featureName.pascalCase()}}UseCase  implements UseCase<{{featureName.pascalCase()}}Entity , TestParams>{
   final {{featureName.pascalCase()}}Repository repository;

  {{featureName.pascalCase()}}UseCase (this.repository);
  @override
  Future<Either<Failure, {{featureName.pascalCase()}}Entity>> call(
      TestParams params) async {
    return await repository.post{{featureName.pascalCase()}}(
        userId: params.userId);
  }
}

class TestParams extends Equatable {
  final String userId;

  const TestParams({required this.userId});

  @override
  List<Object> get props => [userId];
}