import 'package:${{
  values.name
}}/app/modules/example/domain/entities/example_entity.dart';

abstract class ExampleRepository {
  Future<List<ExampleEntity>> getExamples();
}
