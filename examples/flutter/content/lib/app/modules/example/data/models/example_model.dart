import 'package:json_annotation/json_annotation.dart';

part 'example_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ExampleModel {
  final String name;
  final int number;
  final bool condition;

  const ExampleModel({
    required this.name,
    required this.number,
    required this.condition,
  });

  factory ExampleModel.fromJson(Map<String, dynamic> json) =>
      _$ExampleModelFromJson(json);

  Map<String, dynamic> toJson() => _$ExampleModelToJson(this);
}
