import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:audio_story/generated/r.dart';
import 'package:audio_story/models/story.dart';

class StoryPage extends StatefulWidget {
  StoryPage({Key key}) : super(key: key);

  @override
  _StoryPageState createState() {
    return _StoryPageState();
  }
}

class _StoryPageState extends State<StoryPage> {
  @override
  void initState() {
    super.initState();
  }

  Future<List<Story>> loadData() async {
    var data = await DefaultAssetBundle.of(context).loadString(R.data);
    final jsonResult = json.decode(data);
    var list = <Story>[];
    for (final json in jsonResult) {
      final storyModel = Story.fromJson(json as Map);
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
        title: Text('Story'),
      ),
      body: FutureBuilder(
        future: loadData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            debugPrint('Step 3, build widget: ${snapshot.data}');
            // Build the widget with data.
            if (snapshot.data is List<Story>) {
              final data = snapshot.data as List<Story>;
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