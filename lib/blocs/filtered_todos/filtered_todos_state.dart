import 'package:bloc_official_todos/models/visibility_filter.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:bloc_official_todos/models/models.dart';

@immutable
abstract class FilteredTodosState extends Equatable {
  FilteredTodosState([List props = const[]]) : super(props);
}

class FilteredTodosLoading extends FilteredTodosState {
  @override
  String toString() => 'FiltredTodosLoading';
}

class FilteredTodosLoaded extends FilteredTodosState {
  final List<Todo> filteredTodos;
  final VisibilityFilter activeFilter;

  FilteredTodosLoaded(this.filteredTodos, this.activeFilter) : super([filteredTodos, activeFilter]);

  @override
  String toString() => 'FilteredTodosLoaded { filteredTodods: $filteredTodos, activeFilter: $activeFilter }';
}


