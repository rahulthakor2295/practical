import '../data/country.dart';

class CountryResponse {
  bool? status;
  String? message;
  List< Country>? responsedata;

  CountryResponse({this.status, this.message, this.responsedata});

  CountryResponse.fromMap(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['responsedata'] != null) {
      responsedata = <Country>[];
      json['responsedata'].forEach((v) {
        responsedata!.add(new Country.fromMap(v));
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
