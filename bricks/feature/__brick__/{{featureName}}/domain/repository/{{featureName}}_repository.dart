import 'package:fpdart/fpdart.dart';


abstract interface class {{featureName.pascalCase()}}Repository {

  Future<Either<Failure, {{featureName.pascalCase()}}Entity>> get{{featureSingleName.pascalCase()}}();
}