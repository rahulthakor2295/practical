class SendOtpResponse {
  SendOtpResponse({
    this.status,
    this.message,
    this.data,
  });

  SendOtpResponse.fromMap(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? SendOtpData.fromMap(json['data']) : null;
  }
  bool? status;
  String? message;
  SendOtpData? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }
}

class SendOtpData {
  int? otpVal;

  SendOtpData.fromMap(Map<String, dynamic> json) {
    otpVal = json['otp_val'];
  }

  SendOtpData({
    this.otpVal,
  });

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['otp_val'] = otpVal;
    return map;
  }
}
