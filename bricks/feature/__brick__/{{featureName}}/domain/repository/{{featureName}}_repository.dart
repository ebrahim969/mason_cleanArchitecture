import 'package:fpdart/fpdart.dart';

import '../entity/{{featureName}}_entity.dart';


abstract interface class {{featureName.pascalCase()}}Repository {

  Future<Either<Failure, {{featureName.pascalCase()}}Entity>> post{{featureName.pascalCase()}}({
    required String userId,
  });
}