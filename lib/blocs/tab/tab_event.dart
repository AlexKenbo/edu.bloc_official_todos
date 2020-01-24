import 'package:bloc_official_todos/models/models.dart';
import 'package:equatable/equatable.dart';

abstract class TabEvent extends Equatable {
  TabEvent([List props = const[]]) : super(props);
}

class UpdateTab extends TabEvent {
  final AppTab tab;

  UpdateTab(this.tab) : super([tab]);

  @override 
  String toString() => 'UpdateTab { tab: $tab }';
}
