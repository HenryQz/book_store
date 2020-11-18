import 'dart:convert';

import 'package:audio_story/model/story_model.dart';
import 'package:flutter/material.dart';

class StoryScreen extends StatefulWidget {
  StoryScreen({Key key}) : super(key: key);

  @override
  _StoryScreenState createState() {
    return _StoryScreenState();
  }
}

class _StoryScreenState extends State<StoryScreen> {
  @override
  void initState() {
    super.initState();
  }

  Future<List<StoryModel>> loadData() async {
    String data = await DefaultAssetBundle.of(context).loadString("assets/data.json");
    final jsonResult = json.decode(data);
    List<StoryModel> list = [];
    for (final json in jsonResult) {
      final storyModel = StoryModel.fromJson(json as Map);
      list.add(storyModel);
      print(storyModel.name);
    }
    return list;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Story"),
      ),
      body: FutureBuilder(
        future: loadData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            debugPrint('Step 3, build widget: ${snapshot.data}');
            // Build the widget with data.
            if (snapshot.data is List<StoryModel>) {
              final data = snapshot.data as List<StoryModel>;
              return ListView(
                children: data.map((e) => ListTile(
                  leading: Image.network(e.icon),
                  title: Text(e.name),
                  subtitle: Text(e.desc),
                )).toList(),
              );
            }
          } else {
            // We can show the loading view until the data comes back.
            debugPrint('Step 1, build loading widget');
            return CircularProgressIndicator();
          }
          return Container();
        },
      ),
    );
  }
}