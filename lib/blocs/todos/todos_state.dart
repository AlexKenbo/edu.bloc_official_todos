import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:bloc_official_todos/models/models.dart';

//все TodosStatesне может быть изменены
@immutable
abstract class TodosState extends Equatable {
  TodosState([List props = const[]]) : super(props);
}

// это TodosLoading - состояние, пока наше приложение выбирает задачи из хранилища.
class TodosLoading extends TodosState {
  @override
  String toString() => 'TodosLoading';
}

// это TodosLoaded - состояние нашего приложения после успешной загрузки задач.
class TodosLoaded extends TodosState {
  final List<Todo> todos;

  TodosLoaded([this.todos = const[]]) : super([todos]);

  @override
  String toString() => 'TodosLoaded { todos: $todos }';
}

// это TodosNotLoaded - состояние нашего приложения, если задачи не были успешно загружены.
class TodosNotLoaded extends TodosState {
  @override
  String toString() => 'TodosNotLoaded';
}
