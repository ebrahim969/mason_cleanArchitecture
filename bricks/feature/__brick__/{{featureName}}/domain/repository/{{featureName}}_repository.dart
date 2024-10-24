import 'package:fpdart/fpdart.dart';
import '../../../../core/error/failures.dart';
import '../entity/{{featureName}}_entity.dart';


abstract interface class {{featureName.pascalCase()}}Repository {

  Future<Either<Failures, {{featureName.pascalCase()}}Entity>> post{{featureName.pascalCase()}}({
    required String userId,
  });
}