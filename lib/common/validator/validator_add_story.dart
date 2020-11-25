import 'package:flutter_bloc/flutter_bloc.dart';

class ValidatorAddStory extends Cubit<bool> {

  ValidatorAddStory() : super(false);

  void validate(String title, String subtitle){
    emit(title != "" && subtitle != "");
  }
}