import 'dart:async';
import 'package:audio_story/bloc/https/story_api.dart';
import 'package:audio_story/models/home.dart';
import 'package:meta/meta.dart';

class StoryRepository {
  final StoryApi storyApi;

  StoryRepository({@required this.storyApi})
      : assert(storyApi != null);

  Future<List<Home>> getStoryList() async {
    final homes = await storyApi.getStoryList();
    return homes;
  }
}
