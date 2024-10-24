import '../../../../core/core/error/failures.dart';
import '../../../../core/core/common/use_case/use_case.dart';
import '../../domain/repository/{{featureName}}_repository.dart';
import 'package:fpdart/fpdart.dart';

class {{featureName.pascalCase()}}UseCase  implements UseCase<List<String> , TestParams>{
   final {{featureName.pascalCase()}}Repository repository;

  {{featureName.pascalCase()}}Repository(this.repository);
  @override
  Future<Either<Failures, List<String>>> call(
      FetchSavedUserBlogsParams params) async {
    return await repository.post(
        userId: params.userId);
  }
}

class TestParams {
  final String userId;

  TestParams({required this.userId});
}