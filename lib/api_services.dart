import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import 'mobile_data_model.dart';
import 'mobile_model.dart';

class ApiService {
  String mobileApiUrl = "https://api.restful-api.dev/objects";

  final dio = Dio();

  Future<List<MobileModel>> fetchMobileData() async {
    final response = await dio.get(mobileApiUrl);

    if (response.statusCode == 200) {
      final List<dynamic> data = response.data;
      List<MobileModel> mobile =
          data.map((json) => MobileModel.fromJson(json)).toList();

      return mobile;
    } else {
      throw Exception('Failed to load mobile');
    }
  }

  Future<void> postAPIData() async {
    try {
      final MobileModel newMobile = MobileModel(
        mId: 14,
        mName: "PJ",
        mData: MobileDataModel(
          mColor: "red",
        ),
      );

      Response response = await dio.post(mobileApiUrl,
          data: newMobile.toJson()); // Serialize the MobileModel to JSON

      if (response.statusCode == 200) {
        debugPrint('Product added successfully.');
      } else {
        debugPrint(
            "Failed to add product. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      debugPrint("Error: $e");
    }
  }

  Future<void> putAPIData(int id) async {
    try {
      final MobileModel updatedMobile = MobileModel(
        mId: id,
        mName: "PJ",
        mData: MobileDataModel(
          mColor: "blue",
        ),
      );
      Response response =
          await dio.put("$mobileApiUrl/$id", data: updatedMobile.toJson());

      if (response.statusCode == 200) {
        debugPrint('Product updated successfully.');
      } else {
        debugPrint(
            "Failed to update product. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      debugPrint("Error: $e");
    }
  }

  Future<void> deleteRecord(int id) async {
    try {
      Response response = await dio
          .delete("$mobileApiUrl/$id")
          .timeout(const Duration(seconds: 5));
      if (response.statusCode == 200) {
        debugPrint('Product delete successfully.');
      } else {
        debugPrint(
            "Failed to delete product. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      debugPrint("Error: $e");
    }
  }
}
