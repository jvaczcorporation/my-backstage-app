import 'package:flutter_ioasys_backstage/app/modules/example/data/models/example_model.dart';
import 'package:flutter_ioasys_backstage/app/modules/example/domain/entities/example_entity.dart';

class ExampleMapper {
  static ExampleEntity toEntity(ExampleModel model) => ExampleEntity(
        name: model.name,
        number: model.number,
        condition: model.condition,
      );

  static ExampleModel toModel(ExampleEntity entity) => ExampleModel(
        name: entity.name,
        number: entity.number,
        condition: entity.condition,
      );
}
