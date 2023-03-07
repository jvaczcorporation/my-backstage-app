import 'package:flutter/material.dart';
import 'package:${{
  values.name
}}/app/modules/example/presentation/example_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  final controller = Modular.get<ExampleController>();

  get _buildExamples => Column(
        children: controller.store.data!
            .map(
              (item) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "${item.number} - ${item.name} ${item.condition}",
                ),
              ),
            )
            .toList(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          if (controller.store.hasError) {
            return const Center(
              child: Text("Erro ao carregar dados!"),
            );
          }

          if (controller.store.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (!controller.store.anythigData)
                  const Text(
                    "Nenhum dado carregado!",
                  ),
                if (controller.store.anythigData) _buildExamples,
                ElevatedButton(
                  onPressed: controller.fetchExamples,
                  child: const Text("Get examples"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
