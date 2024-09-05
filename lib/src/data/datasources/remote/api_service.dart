import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/retrofit.dart' as retro;

import '../../../domain/models/responses/address_response.dart';
import '../../../domain/models/responses/common_response.dart';
import '../../../domain/models/responses/contact_us_response.dart';
import '../../../domain/models/responses/delete_address_response.dart';
import '../../../domain/models/responses/get_city_response.dart';
import '../../../domain/models/responses/get_country_response.dart';
import '../../../domain/models/responses/get_state_response.dart';
import '../../../domain/models/responses/login_response.dart';

import '../../../domain/models/responses/send_otp_response.dart';
import '../../../domain/models/responses/support_response.dart';
import '../../../utils/constants/strings.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: baseUrl, parser: Parser.MapSerializable)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  //seawind


  @GET('api/f/city  ')
  Future<HttpResponse<GetCityResponse>> getCity(
      @Query("state_id") int? stateId,);
  @GET('api/f/country')
  Future<HttpResponse<CountryResponse>> getCountry();

}
