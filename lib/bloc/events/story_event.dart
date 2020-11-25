import 'package:equatable/equatable.dart';

abstract class StoryEvent extends Equatable {
  const StoryEvent();
}

class StoryRequested extends StoryEvent {

  const StoryRequested();

  @override
  List<Object> get props => [];
}