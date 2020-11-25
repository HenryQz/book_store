// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) {
  return $checkedNew('Person', json, () {
    final val = Person(
      $checkedConvert(json, 'first_name', (v) => v as String),
      $checkedConvert(json, 'last_name', (v) => v as String),
      $checkedConvert(
          json, 'date-of-birth', (v) => DateTime.parse(v as String)),
      middleName: $checkedConvert(json, 'middle_name', (v) => v as String),
      lastOrder: $checkedConvert(json, 'last-order',
          (v) => v == null ? null : DateTime.parse(v as String)),
      orders: $checkedConvert(
          json,
          'orders',
          (v) => (v as List)
              .map((e) => Order.fromJson(e as Map<String, dynamic>))
              .toList()),
    );
    return val;
  }, fieldKeyMap: const {
    'firstName': 'first_name',
    'lastName': 'last_name',
    'dateOfBirth': 'date-of-birth',
    'middleName': 'middle_name',
    'lastOrder': 'last-order'
  });
}

Map<String, dynamic> _$PersonToJson(Person instance) {
  final val = <String, dynamic>{
    'first_name': instance.firstName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('middle_name', instance.middleName);
  val['last_name'] = instance.lastName;
  val['date-of-birth'] = instance.dateOfBirth.toIso8601String();
  val['last-order'] = instance.lastOrder?.toIso8601String();
  val['orders'] = instance.orders.map((e) => e.toJson()).toList();
  return val;
}

Order _$OrderFromJson(Map<String, dynamic> json) {
  return $checkedNew('Order', json, () {
    final val = Order(
      $checkedConvert(
          json, 'date', (v) => Order._dateTimeFromEpochUs(v as int)),
    );
    $checkedConvert(json, 'count', (v) => val.count = v as int);
    $checkedConvert(json, 'item_number', (v) => val.itemNumber = v as int);
    $checkedConvert(json, 'is_rushed', (v) => val.isRushed = v as bool);
    $checkedConvert(
        json,
        'item',
        (v) => val.item =
            v == null ? null : Item.fromJson(v as Map<String, dynamic>));
    $checkedConvert(json, 'prep-time',
        (v) => val.prepTime = Order._durationFromMilliseconds(v as int));
    return val;
  }, fieldKeyMap: const {
    'itemNumber': 'item_number',
    'isRushed': 'is_rushed',
    'prepTime': 'prep-time'
  });
}

Map<String, dynamic> _$OrderToJson(Order instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('item_number', instance.itemNumber);
  writeNotNull('is_rushed', instance.isRushed);
  writeNotNull('item', instance.item?.toJson());
  writeNotNull('prep-time', Order._durationToMilliseconds(instance.prepTime));
  writeNotNull('date', Order._dateTimeToEpochUs(instance.date));
  return val;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return $checkedNew('Item', json, () {
    final val = Item();
    $checkedConvert(json, 'count', (v) => val.count = v as int);
    $checkedConvert(json, 'item_number', (v) => val.itemNumber = v as int);
    $checkedConvert(json, 'is_rushed', (v) => val.isRushed = v as bool);
    return val;
  }, fieldKeyMap: const {'itemNumber': 'item_number', 'isRushed': 'is_rushed'});
}

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'count': instance.count,
      'item_number': instance.itemNumber,
      'is_rushed': instance.isRushed,
    };
