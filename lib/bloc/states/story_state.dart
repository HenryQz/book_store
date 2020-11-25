import 'package:audio_story/models/home.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class StoryState extends Equatable {
  const StoryState();

  @override
  List<Object> get props => [];
}

class StoryInitial extends StoryState {}

class StoryLoadInProgress extends StoryState {}

class StoryLoadSuccess extends StoryState {
  final List<Home> homes;

  const StoryLoadSuccess({@required this.homes}) : assert(homes != null);

  @override
  List<Object> get props => [homes];
}

class StoryLoadFailure extends StoryState {}