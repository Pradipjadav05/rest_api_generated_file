// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MobileModel _$MobileModelFromJson(Map<String, dynamic> json) => MobileModel(
      mId: int.parse(json['id']),
      mName: json['name'] ?? "",
      mData: MobileDataModel.fromJson(json['data'] ?? {}),
      mCreatedAt: json['createdAt'] as String?,
      mUpdatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$MobileModelToJson(MobileModel instance) =>
    <String, dynamic>{
      'id': instance.mId,
      'name': instance.mName,
      'data': instance.mData,
      'createdAt': instance.mCreatedAt,
      'updatedAt': instance.mUpdatedAt,
    };
