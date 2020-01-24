import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:bloc_official_todos/models/models.dart';

@immutable
abstract class TodosEvent extends Equatable {
  TodosEvent([List props = const []]) : super(props);
}

//LoadTodos- сообщает блоку, что ему нужно загрузить задачи из TodosRepository.
class LoadTodos extends TodosEvent {
  @override
  String toString() => 'LoadTodos';
}

//AddTodo - сообщает блоку, что ему нужно добавить новый список задач в список задач.
class AddTodo extends TodosEvent {
  final Todo todo;

  AddTodo(this.todo) : super([todo]);

  @override
  String toString() => 'AddTodo { todo: $todo }';
}

//UpdateTodo - сообщает блоку, что ему нужно обновить существующее задание.
class UpdateTodo extends TodosEvent {
  final Todo updatedTodo;

  UpdateTodo(this.updatedTodo) : super([updatedTodo]);

  @override
  String toString() => 'UpdateTodo { updatedTodo: $updatedTodo }';
}

//DeleteTodo - сообщает блоку, что ему нужно удалить существующее задание.
class DeleteTodo extends TodosEvent {
  final Todo todo;

  DeleteTodo(this.todo) : super([todo]);

  @override
  String toString() => 'DeleteTodo { todo: $todo }';
}

//ClearCompleted - сообщает блоку, что ему нужно удалить все выполненные задачи.
class ClearCompleted extends TodosEvent {
  @override
  String toString() {
    return 'ClearCompleted';
  }
}

//ToggleAll - сообщает блоку, что необходимо переключить завершенное состояние всех задач.
class ToggleAll extends TodosEvent {
  @override
  String toString() => 'ToggleAll';
}
