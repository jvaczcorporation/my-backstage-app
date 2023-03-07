import 'dart:convert';

import 'package:${{
  values.name
}}/app/modules/example/data/datasources/example_datasource.dart';
import 'package:${{
  values.name
}}/app/modules/example/data/models/example_model.dart';

class ExampleDatasourceImpl implements ExampleDatasource {
  //Injection Remote Package (Firestore, HttpAdater, ...)

  ExampleDatasourceImpl();

  @override
  Future<List<ExampleModel>> getExamplesRemote() async {
    try {
      //Call Remote Api here (get, post, ...)

      final data = jsonDecode(json);

      final listModel =
          (data as List).map((item) => ExampleModel.fromJson(item)).toList();

      return listModel;
    } catch (_) {
      throw Exception(); //TODO
    }
  }
}

const json = '''
[
   {
      "name":"Ioasys",
      "number":1,
      "condition":true
   },
   {
      "name":"Alpargatas",
      "number":2,
      "condition":false
   }
]
''';
