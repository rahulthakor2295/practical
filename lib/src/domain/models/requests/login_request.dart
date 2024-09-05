class LoginRequest {
  final String? mobileNumber;
  final String? deviceId;
  final int deviceType;

  LoginRequest({
    required this.mobileNumber,
    required this.deviceId,
    required this.deviceType,
  });
}
