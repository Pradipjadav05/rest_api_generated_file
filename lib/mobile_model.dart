import 'package:json_annotation/json_annotation.dart';

import 'mobile_data_model.dart';

part 'mobile_model.g.dart';

@JsonSerializable()
class MobileModel {
  @JsonKey(name: "id")
  late final int? mId;
  @JsonKey(name: "name")
  late final String mName;
  @JsonKey(name: "data")
  late final MobileDataModel mData;
  @JsonKey(name: "createdAt")
  late final String? mCreatedAt;
  @JsonKey(name: "updatedAt")
  late final String? mUpdatedAt;

  MobileModel(
      {required this.mId,
      required this.mName,
      required this.mData,
      this.mCreatedAt,
      this.mUpdatedAt});

  /*factory MobileModel.fromJson(Map<String, dynamic> json) {
    return MobileModel(
      id: int.parse(json["id"]),
      name: json["name"] ?? "",
      data: MobileDataModel.fromJson(json["data"] ?? {}),
      createdAt: json["createdAt"],
      updatedAt: json["updatedAt"],
    );
  }


  // Convert MobileDataModel to Map

  final Map<String, dynamic> dataMap = MobileDataModel().toJson() ?? {};

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "data": dataMap,
    };
  }*/

  factory MobileModel.fromJson(Map<String, dynamic> json) =>
      _$MobileModelFromJson(json);

  Map<String, dynamic> toJson() => _$MobileModelToJson(this);
}
