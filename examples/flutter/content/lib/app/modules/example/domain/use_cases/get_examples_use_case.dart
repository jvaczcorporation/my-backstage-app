import 'package:flutter_ioasys_backstage/app/modules/example/domain/entities/example_entity.dart';
import 'package:flutter_ioasys_backstage/app/modules/example/domain/repositories/example_repository.dart';

abstract class GetExamplesUseCase {
  Future<List<ExampleEntity>> call();
}

class GetExamplesUseCaseImpl implements GetExamplesUseCase {
  final ExampleRepository repository;

  GetExamplesUseCaseImpl({
    required this.repository,
  });

  @override
  Future<List<ExampleEntity>> call() async {
    return await repository.getExamples();
  }
}
