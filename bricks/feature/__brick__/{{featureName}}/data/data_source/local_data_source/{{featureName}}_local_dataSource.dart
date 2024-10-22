import 'package:hive/hive.dart';

abstract interface class LocalDataSource {}

class LocalDataSourceImpl implements LocalDataSource {
  final Box box;

  LocalDataSourceImpl(this.box);
}
