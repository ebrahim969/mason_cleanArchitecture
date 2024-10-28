import 'package:equatable/equatable.dart';

class {{featureName.pascalCase()}}Model extends Equatable {

  final String name;

  const {{featureName.pascalCase()}}Model({required this.name});

  factory {{featureName.pascalCase()}}Model.fromJson(Map<String, dynamic> json) => {{featureName.pascalCase()}}Model(name: json['name']);



  @override
  List<Object> get props => [name];
}