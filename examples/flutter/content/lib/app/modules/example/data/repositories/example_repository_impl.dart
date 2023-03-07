import 'package:flutter_ioasys_backstage/app/modules/example/data/datasources/example_datasource.dart';
import 'package:flutter_ioasys_backstage/app/modules/example/data/mappers/example_mapper.dart';
import 'package:flutter_ioasys_backstage/app/modules/example/domain/entities/example_entity.dart';
import 'package:flutter_ioasys_backstage/app/modules/example/domain/repositories/example_repository.dart';

class ExampleRepositoryImpl implements ExampleRepository {
  final ExampleDatasource datasource;

  ExampleRepositoryImpl({
    required this.datasource,
  });

  @override
  Future<List<ExampleEntity>> getExamples() async {
    try {
      final listExampleModel = await datasource.getExamplesRemote();

      final listExampleEntity = listExampleModel
          .map((example) => ExampleMapper.toEntity(example))
          .toList();
      return listExampleEntity;
    } catch (_) {
      throw Exception(); //TODO
    }
  }
}
