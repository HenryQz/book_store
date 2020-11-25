import 'package:json_annotation/json_annotation.dart';


part 'category.g.dart';

@JsonSerializable()
class Category {
      Category();

  int id;
  String title;
  int sort;
  @JsonKey(name: 'category_type') String categoryType;
  @JsonKey(name: 'view_total') int viewTotal;
  String path;
  dynamic image;
  @JsonKey(name: 'story_description') dynamic storyDescription;
  @JsonKey(name: 'time_total') int timeTotal;
  @JsonKey(name: 'created_at') String createdAt;
  @JsonKey(name: 'updated_at') String updatedAt;
  @JsonKey(name: 'status_vip') int statusVip;
  int type;
  int status;
  int flagging;

  factory Category.fromJson(Map<String,dynamic> json) => _$CategoryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
