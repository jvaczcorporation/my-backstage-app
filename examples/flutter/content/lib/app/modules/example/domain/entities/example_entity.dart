import 'package:equatable/equatable.dart';

class ExampleEntity extends Equatable {
  final String name;
  final int number;
  final bool condition;

  const ExampleEntity({
    required this.name,
    required this.number,
    required this.condition,
  });

  @override
  List<Object?> get props => [
        name,
        number,
        condition,
      ];
}
