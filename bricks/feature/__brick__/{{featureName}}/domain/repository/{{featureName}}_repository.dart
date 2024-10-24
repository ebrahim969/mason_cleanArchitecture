import 'package:fpdart/fpdart.dart';
import '../../../../core/core/error/failures.dart';
import '../entity/{{featureName}}_entity.dart';


abstract interface class {{featureName.pascalCase()}}Repository {

  Future<Either<Failure, {{featureName.pascalCase()}}Entity>> post{{featureName.pascalCase()}}({
    required String userId,
  });
}