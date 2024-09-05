import 'package:practical/src/domain/models/responses/get_country_response.dart';
import 'package:practical/src/presentation/cubits/country/country_state.dart';

import '../../../domain/models/requests/city_request.dart';
import '../../../domain/models/requests/state_request.dart';
import '../../../domain/models/responses/address_response.dart';
import '../../../domain/repositories/api_repository.dart';
import '../../../utils/resources/data_state.dart';
import '../base.dart';

class CountryCubit extends BaseCubit<CountryState, CountryResponse> {
  final ApiRepository _apiRepository;

  CountryCubit(this._apiRepository)
      : super(const CountryInitState(), CountryResponse());

  Future<void> getCountry() async {
    if (isBusy) return;
    emit(const CountryStateLoading());
    await run(() async {
      final response = await _apiRepository.getCountry();
      if (response is DataSuccess) {
        emit(CountrySuccessState(countryResponse: response.data));
      } else if (response is DataFailed) {
        emit(CountryStateError(error: response.error));
      }
    });
  }



}
