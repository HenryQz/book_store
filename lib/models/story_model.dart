
class StoryModel {
  String icon;
  String name;
  String desc;

  StoryModel({this.icon, this.name, this.desc});

  StoryModel.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    name = json['name'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['name'] = this.name;
    data['desc'] = this.desc;
    return data;
  }
}