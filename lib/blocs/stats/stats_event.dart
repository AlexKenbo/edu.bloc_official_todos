import 'package:equatable/equatable.dart';
import 'package:bloc_official_todos/models/models.dart';

abstract class StatsEvent extends Equatable {
  StatsEvent([List props = const[]]) : super(props);
}

class UpdateStats extends StatsEvent {
  final List<Todo> todos;

  UpdateStats(this.todos) : super([todos]);

  @override
  String toString() => 'UpdateStats { todos: $todos }';
}