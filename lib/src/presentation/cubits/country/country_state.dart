import 'package:dio/dio.dart';

import '../../../domain/models/responses/address_response.dart';
import '../../../domain/models/responses/get_city_response.dart';
import '../../../domain/models/responses/get_country_response.dart';
import '../../../domain/models/responses/get_state_response.dart';

abstract class CountryState {
  final CountryResponse? countryResponse;
  final DioError? error;

  const CountryState({

    this.countryResponse,
    this.error,
  });

  List<Object?> get props =>
      [countryResponse, error];
}



class CountryStateLoading extends CountryState {
  const CountryStateLoading();
}

class CountryInitState extends CountryState {
  const CountryInitState();
}

class CountrySuccessState extends CountryState {
  const CountrySuccessState({super.countryResponse});
}

class CountryStateError extends CountryState {
  const CountryStateError({super.error});
}
