

import '../data/category.dart';

class CategoryResponse {
  bool? status;
  String? message;
  List<CategoryResponsedata>? responsedata;

  CategoryResponse({this.status, this.message, this.responsedata});

  CategoryResponse.fromMap(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['responsedata'] != null) {
      responsedata = <CategoryResponsedata>[];
      json['responsedata'].forEach((v) {
        responsedata!.add(new CategoryResponsedata.fromMap(v));
      });
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.responsedata != null) {
      data['responsedata'] = this.responsedata!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}