import 'package:flutter_ioasys_backstage/app/modules/example/example_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/',
          module: ExampleModule(),
        ),
      ];
}
