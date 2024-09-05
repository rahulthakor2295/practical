import '../domain/models/responses/login_response.dart';

class StaticData {
  static LoginData? loginData = LoginData();
  static String? tempToken = "Token Not Available";
  static String token = 'Bearer ${tempToken}';
  static String deviceInfo = "Not Available";
  static String deviceToken = "Token Not Available";
  static int deviceType = 0;
}
