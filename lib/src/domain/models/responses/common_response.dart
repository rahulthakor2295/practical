import 'package:equatable/equatable.dart';

class CommonResponse extends Equatable {
  CommonResponse({
    this.status,
    this.message,
    this.data,
  });

  late final bool? status;
  late final String? message;
  late final List<dynamic>? data;

  CommonResponse.fromMap(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = List.castFrom<dynamic, dynamic>(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    _data['data'] = data;
    return _data;
  }

  @override
  List<Object?> get props => [status, message, data];
}
