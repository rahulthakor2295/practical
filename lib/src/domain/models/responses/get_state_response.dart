import '../data/State.dart';

class GetStateResponse {
  GetStateResponse({
    this.status,
    this.message,
    this.data,
  });

  GetStateResponse.fromMap(dynamic json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <StateData>[];
      json['data'].forEach((v) {
        data!.add(new StateData.fromMap(v));
      });
    }
  }
  bool? status;
  String? message;
  List<StateData>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (this.data != null) {
      map['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
