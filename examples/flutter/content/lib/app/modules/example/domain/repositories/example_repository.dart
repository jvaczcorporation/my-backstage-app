import 'package:flutter_ioasys_backstage/app/modules/example/domain/entities/example_entity.dart';

abstract class ExampleRepository {
  Future<List<ExampleEntity>> getExamples();
}
