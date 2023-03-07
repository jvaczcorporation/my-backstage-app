import 'package:${{
  values.name
}}/app/modules/example/domain/use_cases/get_examples_use_case.dart';
import 'package:${{
  values.name
}}/app/modules/example/presentation/example_store.dart';

class ExampleController {
  final ExampleStore store;
  final GetExamplesUseCase getExamplesUseCase;

  ExampleController({
    required this.store,
    required this.getExamplesUseCase,
  });

  fetchExamples() async {
    try {
      store.data = await getExamplesUseCase();
    } on Exception catch (e) {
      store.exception = e;
      store.error = e.toString();
    }
  }
}
