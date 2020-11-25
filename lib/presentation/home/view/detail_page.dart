import 'package:audio_story/models/story_home_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:audio_story/common/validator/validator_add_story.dart';

class DetailPage extends StatefulWidget {
  static const routeName = "/detailScreen";
  final StoryHome story;

  final Function() onDelete;
  final Function(String) onUpdate;

  DetailPage({Key key, this.story, this.onDelete, this.onUpdate}) : super(key: key);

  @override
  _DetailPageState createState() {
    return _DetailPageState();
  }
}

class _DetailPageState extends State<DetailPage> {

  final titleController = TextEditingController();
  final subtitleController = TextEditingController();
  ValidatorAddStory validatorBloc = ValidatorAddStory();

  @override
  void initState() {
    super.initState();
    if (widget.story is StoryModelHome) {
      final storyModel = widget.story as StoryModelHome;
      titleController.text = storyModel.storyName;
    }
  }

  @override
  void dispose() {
    titleController.dispose();
    subtitleController.dispose();
    super.dispose();
  }

  void _onChangText() {
    validatorBloc.validate(titleController.text, subtitleController.text);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => validatorBloc,
      child: Scaffold(
        appBar: getAppBar(),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  margin: EdgeInsets.only(bottom: 20),
                  child: Theme(
                    data: new ThemeData(
                      primaryColor: Colors.redAccent,
                      primaryColorDark: Colors.red,
                    ),
                    child: TextField(
                      controller: titleController,
                      decoration: new InputDecoration(
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.teal)),
                          hintText: 'Tell us about yourself',
                          helperText: 'Keep it short, this is just a demo.',
                          labelText: 'Life story',
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.green,
                          ),
                          prefixText: ' ',
                          suffixText: 'USD',
                          suffixStyle: const TextStyle(color: Colors.green)
                      ),
                      onChanged: (text) => _onChangText(),
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  margin: EdgeInsets.only(bottom: 20),
                  child: Theme(
                    data: new ThemeData(
                      primaryColor: Colors.redAccent,
                      primaryColorDark: Colors.red,
                    ),
                    child: TextField(
                      controller: subtitleController,
                      decoration: new InputDecoration(
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.teal)),
                          hintText: 'Tell us about yourself',
                          helperText: 'Keep it short, this is just a demo.',
                          labelText: 'Life story',
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.green,
                          ),
                          prefixText: ' ',
                          suffixText: 'USD',
                          suffixStyle: const TextStyle(color: Colors.green)
                      ),
                      onChanged: (text) => _onChangText(),
                    ),
                  ),
                ),
                MaterialButton(
                  minWidth: 100,
                  color: Colors.green,
                  child: Text("Update", style: TextStyle(color: Colors.white),),
                  onPressed: (){
                    widget.onUpdate(titleController.text);
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
      ),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      title: Text("Detail Screen"),
      actions: [
        IconButton(
          icon: BlocBuilder<ValidatorAddStory, bool>(
            builder: (context, state) {
              return Icon(Icons.add, color: state ? Colors.white: Colors.grey);
            },
          ),
          onPressed: () {

          },
        )
      ],
    );
  }
}
