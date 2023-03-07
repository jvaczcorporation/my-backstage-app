import 'package:${{
  values.name
}}/app/modules/example/data/models/example_model.dart';

abstract class ExampleDatasource {
  Future<List<ExampleModel>> getExamplesRemote();
}
