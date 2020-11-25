import 'package:json_annotation/json_annotation.dart';
import 'category.dart';

part 'home.g.dart';

@JsonSerializable()
class Home {
      Home();

  int id;
  String title;
  String description;
  @JsonKey(name: 'created_at') String createdAt;
  @JsonKey(name: 'updated_at') String updatedAt;
  int status;
  int flagging;
  @JsonKey(name: 'category_list') List<Category> categoryList;

  factory Home.fromJson(Map<String,dynamic> json) => _$HomeFromJson(json);
  Map<String, dynamic> toJson() => _$HomeToJson(this);
}
