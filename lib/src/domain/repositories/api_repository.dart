import '../../utils/resources/data_state.dart';
import '../models/requests/breaking_news.request.dart';
import '../models/requests/city_request.dart';
import '../models/requests/delete_address_request.dart';
import '../models/requests/login_request.dart';
import '../models/requests/order_detail_request.dart';
import '../models/requests/order_request.dart';
import '../models/requests/send_otp_request.dart';
import '../models/requests/state_request.dart';
import '../models/responses/address_response.dart';
import '../models/responses/common_response.dart';
import '../models/responses/contact_us_response.dart';
import '../models/responses/delete_address_response.dart';
import '../models/responses/get_city_response.dart';
import '../models/responses/get_country_response.dart';
import '../models/responses/get_state_response.dart';
import '../models/responses/login_response.dart';

import '../models/responses/send_otp_response.dart';
import '../models/responses/support_response.dart';

abstract class ApiRepository {

  Future<DataState<GetCityResponse>> getCity({
    required CityRequest request,
  });

  Future<DataState<CountryResponse>> getCountry();



}
