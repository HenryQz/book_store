// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Home _$HomeFromJson(Map<String, dynamic> json) {
  return $checkedNew('Home', json, () {
    final val = Home();
    $checkedConvert(json, 'id', (v) => val.id = v as int);
    $checkedConvert(json, 'title', (v) => val.title = v as String);
    $checkedConvert(json, 'description', (v) => val.description = v as String);
    $checkedConvert(json, 'created_at', (v) => val.createdAt = v as String);
    $checkedConvert(json, 'updated_at', (v) => val.updatedAt = v as String);
    $checkedConvert(json, 'status', (v) => val.status = v as int);
    $checkedConvert(json, 'flagging', (v) => val.flagging = v as int);
    $checkedConvert(
        json,
        'category_list',
        (v) => val.categoryList = (v as List)
            ?.map((e) =>
                e == null ? null : Category.fromJson(e as Map<String, dynamic>))
            ?.toList());
    return val;
  }, fieldKeyMap: const {
    'createdAt': 'created_at',
    'updatedAt': 'updated_at',
    'categoryList': 'category_list'
  });
}

Map<String, dynamic> _$HomeToJson(Home instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'status': instance.status,
      'flagging': instance.flagging,
      'category_list': instance.categoryList?.map((e) => e?.toJson())?.toList(),
    };
