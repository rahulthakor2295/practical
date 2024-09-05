import '../data/city_data.dart';

class GetCityResponse {
  GetCityResponse({
    this.status,
    this.message,
    this.data,
  });

  GetCityResponse.fromMap(dynamic json) {
    status = json['status'];
    message = json['message'];
    if (json['responsedata'] != null) {
      data = <City>[];
      json['responsedata'].forEach((v) {
        data!.add(new City.fromMap(v));
      });
    }
  }
  bool? status;
  String? message;
  List<City>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (this.data != null) {
      map['responsedata'] = this.data!.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
