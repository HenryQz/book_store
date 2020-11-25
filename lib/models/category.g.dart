// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return $checkedNew('Category', json, () {
    final val = Category();
    $checkedConvert(json, 'id', (v) => val.id = v as int);
    $checkedConvert(json, 'title', (v) => val.title = v as String);
    $checkedConvert(json, 'sort', (v) => val.sort = v as int);
    $checkedConvert(
        json, 'category_type', (v) => val.categoryType = v as String);
    $checkedConvert(json, 'view_total', (v) => val.viewTotal = v as int);
    $checkedConvert(json, 'path', (v) => val.path = v as String);
    $checkedConvert(json, 'image', (v) => val.image = v);
    $checkedConvert(json, 'story_description', (v) => val.storyDescription = v);
    $checkedConvert(json, 'time_total', (v) => val.timeTotal = v as int);
    $checkedConvert(json, 'created_at', (v) => val.createdAt = v as String);
    $checkedConvert(json, 'updated_at', (v) => val.updatedAt = v as String);
    $checkedConvert(json, 'status_vip', (v) => val.statusVip = v as int);
    $checkedConvert(json, 'type', (v) => val.type = v as int);
    $checkedConvert(json, 'status', (v) => val.status = v as int);
    $checkedConvert(json, 'flagging', (v) => val.flagging = v as int);
    return val;
  }, fieldKeyMap: const {
    'categoryType': 'category_type',
    'viewTotal': 'view_total',
    'storyDescription': 'story_description',
    'timeTotal': 'time_total',
    'createdAt': 'created_at',
    'updatedAt': 'updated_at',
    'statusVip': 'status_vip'
  });
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'sort': instance.sort,
      'category_type': instance.categoryType,
      'view_total': instance.viewTotal,
      'path': instance.path,
      'image': instance.image,
      'story_description': instance.storyDescription,
      'time_total': instance.timeTotal,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'status_vip': instance.statusVip,
      'type': instance.type,
      'status': instance.status,
      'flagging': instance.flagging,
    };
