// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MobileDataModel _$MobileDataModelFromJson(Map<String, dynamic> json) =>
    MobileDataModel(
      mColor: json['color'] as String?,
      mCapacity: json['capacity'] as String?,
      mPrice: (json['price'] as num?)?.toDouble(),
      mGeneration: json['generation'] as String?,
      mCpuModel: json['cpuModel'] as String?,
      mHardDiskSize: json['hardDiskSize'] as String?,
      mStrapColor: json['strapColor'] as String?,
      mCaseSize: json['caseSize'] as String?,
      mDescription: json['description'] as String?,
      mScreenSize: (json['screenSize'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MobileDataModelToJson(MobileDataModel instance) =>
    <String, dynamic>{
      'color': instance.mColor,
      'capacity': instance.mCapacity,
      'price': instance.mPrice,
      'generation': instance.mGeneration,
      'cpuModel': instance.mCpuModel,
      'hardDiskSize': instance.mHardDiskSize,
      'strapColor': instance.mStrapColor,
      'caseSize': instance.mCaseSize,
      'description': instance.mDescription,
      'screenSize': instance.mScreenSize,
    };
