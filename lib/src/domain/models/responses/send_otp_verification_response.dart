import 'dart:ffi';

import 'package:equatable/equatable.dart';

class SendOtpVerificationResponse extends Equatable {
  SendOtpVerificationResponse({
    this.status,
    this.message,
    this.data,
  });
  late final bool? status;
  late final String? message;
  late final SendOtpData? data;

  SendOtpVerificationResponse.fromMap(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'];
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

class SendOtpData {
  SendOtpData({
    this.otp,
  });
  late final Int? otp;

  SendOtpData.fromMap(Map<String, dynamic> json) {
    otp = json['otp_val'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['otp_val'] = otp;
    return _data;
  }

  @override
  List<Object?> get props => [otp];
}
