import 'package:audio_story/models/story_home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPage1 extends StatefulWidget {
  static const routeName = '/detailScreen';
  final StoryHome story;

  final Function() onDelete;
  final Function(String) onUpdate;

  DetailPage1({Key key, this.story, this.onDelete, this.onUpdate}) : super(key: key);

  @override
  _DetailScreenState createState() {
    return _DetailScreenState();
  }
}

class _DetailScreenState extends State<DetailPage1> {

  final titleController = TextEditingController();
  final subtitleController = TextEditingController();

  @override
  void initState() {
    if (widget.story is StoryModelHome) {
      final storyModel = widget.story as StoryModelHome;
      titleController.text = storyModel.storyName;
    }
    super.initState();
  }

  @override
  void dispose() {
    titleController.dispose();
    subtitleController.dispose();
    super.dispose();
  }

  void _onChangText() {
    final validator = Provider.of<ValidateAddButton>(context, listen: false);
    validator.validate(titleController.text, subtitleController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  data: ThemeData(
                    primaryColor: Colors.redAccent,
                    primaryColorDark: Colors.red,
                  ),
                  child: TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal)),
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
                  data: ThemeData(
                    primaryColor: Colors.redAccent,
                    primaryColorDark: Colors.red,
                  ),
                  child: TextField(
                    controller: subtitleController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal)),
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
                child: Text('Update', style: TextStyle(color: Colors.white),),
                onPressed: (){
                  widget.onUpdate(titleController.text);
                  Navigator.pop(context);
                },
              ),
              MaterialButton(
                minWidth: 100,
                color: Colors.green,
                child: Text('Delete', style: TextStyle(color: Colors.white),),
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

  AppBar getAppBar() {
    return AppBar(
      title: Text('Detail Screen'),
      actions: [
        IconButton(
          icon: Consumer<ValidateAddButton>(
              builder: (context, validator, child) {
                return validator.isValid ? Icon(Icons.add) : Icon(Icons.add, color: Colors.grey);
              },
          ),
          onPressed: () {

          },
        )
      ],
    );
  }

}

class ValidateAddButton with ChangeNotifier {
  bool isValid = false;

  void validate(String title, String subtitle) {
    isValid = title != '' && subtitle != '';
    notifyListeners();
  }
}