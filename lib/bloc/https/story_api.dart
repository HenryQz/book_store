import 'dart:convert';
import 'dart:async';

import 'package:audio_story/bloc/https/api.dart';
import 'package:audio_story/models/home.dart';


class StoryApi extends ApiClient {

  StoryApi();

  Future<List<Home>> getStoryList() async {
    var response = await dio.get('/getListStoryHomeUp');
    if (response.statusCode != 200) {
      throw Exception('error getting locationId for city');
    }
    final json = response.data['data'] ;
    final homes = List<Home>.from((json as List).map((i) => Home.fromJson(i)));
    return homes;
  }
}


final storyApi = StoryApi();
