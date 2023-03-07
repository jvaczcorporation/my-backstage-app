import 'package:flutter_ioasys_backstage/app/commons/presentation/stores/state_store.dart';
import 'package:flutter_ioasys_backstage/app/modules/example/domain/entities/example_entity.dart';

class ExampleStore extends StateStore<List<ExampleEntity>> {
  bool get anythigData => data != null && data!.isNotEmpty;
}
