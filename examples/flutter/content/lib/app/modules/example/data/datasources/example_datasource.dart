import 'package:flutter_ioasys_backstage/app/modules/example/data/models/example_model.dart';

abstract class ExampleDatasource {
  Future<List<ExampleModel>> getExamplesRemote();
}
