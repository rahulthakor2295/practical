import 'package:equatable/equatable.dart';

class DeleteAddressResponse extends Equatable {
  DeleteAddressResponse({
    this.status,
    this.message,
    this.data,
  });

  late final bool? status;
  late final String? message;
  late final Data? data;

  DeleteAddressResponse.fromMap(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    if (this.data != null) {
      _data['data'] = this.data!.toJson();
    }
    return _data;
  }

  @override
  List<Object?> get props => [status, message, data];
}

class Data {
  Data();

  Data.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}
