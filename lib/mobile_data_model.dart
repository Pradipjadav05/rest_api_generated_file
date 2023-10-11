import 'package:json_annotation/json_annotation.dart';

part 'mobile_data_model.g.dart';

@JsonSerializable()
class MobileDataModel {
  @JsonKey(name: "color")
  final String? mColor;
  @JsonKey(name: "capacity")
  final String? mCapacity;
  @JsonKey(name: "price")
  final double? mPrice;
  @JsonKey(name: "generation")
  final String? mGeneration;
  @JsonKey(name: "cpuModel")
  final String? mCpuModel;
  @JsonKey(name: "hardDiskSize")
  final String? mHardDiskSize;
  @JsonKey(name: "strapColor")
  final String? mStrapColor;
  @JsonKey(name: "caseSize")
  final String? mCaseSize;
  @JsonKey(name: "description")
  final String? mDescription;
  @JsonKey(name: "screenSize")
  final double? mScreenSize;

  MobileDataModel(
      {this.mColor,
      this.mCapacity,
      this.mPrice,
      this.mGeneration,
      this.mCpuModel,
      this.mHardDiskSize,
      this.mStrapColor,
      this.mCaseSize,
      this.mDescription,
      this.mScreenSize});

  /* factory MobileDataModel.fromJson(Map<String, dynamic> json) {
    return MobileDataModel(
      color: json["color"] ?? "",
      capacity: json["capacity"] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'color': color,
      'capacity': capacity,
      'price': price,
      'Generation': generation,
      'CPU model': cpuModel,
      'Hard disk size': hardDiskSize,
      'Strap Colour': strapColor,
      'Case Size': caseSize,
      'Description': description,
      'Screen size': screenSize,
    };
  }*/

  factory MobileDataModel.fromJson(Map<String, dynamic> json) =>
      _$MobileDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$MobileDataModelToJson(this);
}
