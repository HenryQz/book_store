import 'package:flutter/material.dart';

import '../../model/story_model.dart';

class DetailScreen extends StatefulWidget {
  static const routeName = "/detailScreen";
  final StoryHome story;

  final Function() onDelete;
  final Function(String) onUpdate;

  DetailScreen({Key key, this.story, this.onDelete, this.onUpdate}) : super(key: key);

  @override
  _DetailScreenState createState() {
    return _DetailScreenState();
  }
}

class _DetailScreenState extends State<DetailScreen> {

  final storyController = TextEditingController();

  @override
  void initState() {
    super.initState();
    var story = widget.story;
    if (story is StoryHighlightModel) {
      storyController.text = story.storyName;
    } else if (story is StoryNewModel) {
      storyController.text = story.storyName;
    }
  }

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                margin: EdgeInsets.only(bottom: 20),
                child: TextField(
                  controller: storyController,
                ),
              ),
              MaterialButton(
                minWidth: 100,
                color: Colors.green,
                child: Text("Update", style: TextStyle(color: Colors.white),),
                onPressed: (){
                  widget.onUpdate(storyController.text);
                  Navigator.pop(context);
                },
              ),
              MaterialButton(
                minWidth: 100,
                color: Colors.green,
                child: Text("Delete", style: TextStyle(color: Colors.white),),
                onPressed: (){
                  widget.onDelete();
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}