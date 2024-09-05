import '../../domain/models/requests/breaking_news.request.dart';
import '../../domain/models/requests/city_request.dart';
import '../../domain/models/requests/delete_address_request.dart';
import '../../domain/models/requests/login_request.dart';
import '../../domain/models/requests/order_detail_request.dart';
import '../../domain/models/requests/order_request.dart';
import '../../domain/models/requests/send_otp_request.dart';
import '../../domain/models/requests/state_request.dart';
import '../../domain/models/responses/address_response.dart';
import '../../domain/models/responses/common_response.dart';
import '../../domain/models/responses/contact_us_response.dart';
import '../../domain/models/responses/delete_address_response.dart';
import '../../domain/models/responses/get_city_response.dart';
import '../../domain/models/responses/get_country_response.dart';
import '../../domain/models/responses/get_state_response.dart';
import '../../domain/models/responses/login_response.dart';

import '../../domain/models/responses/send_otp_response.dart';
import '../../domain/models/responses/support_response.dart';
import '../../domain/repositories/api_repository.dart';
import '../../utils/resources/data_state.dart';
import '../../utils/static_data.dart';
import '../datasources/remote/api_service.dart';
import 'base/base_api_repository.dart';

class ApiRepositoryImpl extends BaseApiRepository implements ApiRepository {
  final ApiService _ApiService;

  ApiRepositoryImpl(this._ApiService);


  @override
  Future<DataState<GetCityResponse>> getCity({required CityRequest request}) {
    return getStateOf<GetCityResponse>(
      request: () => _ApiService.getCity(request.stateId),
    );
  }

  @override
  Future<DataState<CountryResponse>> getCountry() {
    return getStateOf<CountryResponse>(
      request: () => _ApiService.getCountry(),
    );
  }




}
