import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

import '../index.dart';

class StoryBloc extends Bloc<StoryEvent, StoryState> {
  final StoryRepository storyRepository;

  StoryBloc({@required this.storyRepository})
      : assert(storyRepository != null),
        super(StoryInitial());

  @override
  Stream<StoryState> mapEventToState(StoryEvent event) async* {
    if (event is StoryRequested) {
      yield StoryLoadInProgress();
      try {
        final homes = await storyRepository.getStoryList();
        print(homes.toString());
        yield StoryLoadSuccess(homes: homes);
      } catch (_) {
        yield StoryLoadFailure();
      }
    }
  }
}
