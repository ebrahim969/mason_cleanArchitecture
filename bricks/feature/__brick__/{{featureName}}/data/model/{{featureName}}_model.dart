import 'package:equatable/equatable.dart';

class {{featureSingleName.pascalCase()}}Model extends Equatable {

  final String name;

  const {{featureSingleName.pascalCase()}}Model({required this.name});

  factory {{featureSingleName.pascalCase()}}Model.fromJson(Map<String, dynamic> json) => {{featureName.pascalCase()}}Model(name: json['name']);



  @override
  List<Object> get props => [name];
}