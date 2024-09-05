import '../data/slider.dart';

class SliderRespone {
  bool? status;
  String? message;
  List<Responsedata>? responsedata;

  SliderRespone({this.status, this.message, this.responsedata});

  SliderRespone.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['responsedata'] != null) {
      responsedata = <Responsedata>[];
      json['responsedata'].forEach((v) {
        responsedata!.add(new Responsedata.fromMap(v));
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