
class Story {
  String icon;
  String name;
  String desc;

  Story({this.icon, this.name, this.desc});

  Story.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    name = json['name'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['icon'] = icon;
    data['name'] = name;
    data['desc'] = desc;
    return data;
  }
}