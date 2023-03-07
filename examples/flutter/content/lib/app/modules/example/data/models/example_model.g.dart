// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExampleModel _$ExampleModelFromJson(Map<String, dynamic> json) => ExampleModel(
      name: json['name'] as String,
      number: json['number'] as int,
      condition: json['condition'] as bool,
    );

Map<String, dynamic> _$ExampleModelToJson(ExampleModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'number': instance.number,
      'condition': instance.condition,
    };
