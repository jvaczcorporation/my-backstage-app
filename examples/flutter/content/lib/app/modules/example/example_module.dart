import 'package:flutter_ioasys_backstage/app/modules/example/data/repositories/example_repository_impl.dart';
import 'package:flutter_ioasys_backstage/app/modules/example/domain/use_cases/get_examples_use_case.dart';
import 'package:flutter_ioasys_backstage/app/modules/example/infra/remote/example_datasource_impl.dart';
import 'package:flutter_ioasys_backstage/app/modules/example/presentation/example_controller.dart';
import 'package:flutter_ioasys_backstage/app/modules/example/presentation/example_page.dart';
import 'package:flutter_ioasys_backstage/app/modules/example/presentation/example_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ExampleModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory(
          (i) => ExampleDatasourceImpl(),
        ),
        Bind.factory(
          (i) => ExampleRepositoryImpl(
            datasource: i(),
          ),
        ),
        Bind.factory(
          (i) => GetExamplesUseCaseImpl(
            repository: i(),
          ),
        ),
        Bind.factory(
          (i) => ExampleStore(),
        ),
        Bind.factory(
          (i) => ExampleController(
            store: i(),
            getExamplesUseCase: i(),
          ),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const ExamplePage(),
          transition: TransitionType.noTransition,
        ),
      ];
}
