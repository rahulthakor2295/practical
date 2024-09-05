import 'package:equatable/equatable.dart';

import '../data/State.dart';
import '../data/city_data.dart';
import '../data/country.dart';

class AddressResponse extends Equatable {
  AddressResponse({
    this.status,
    this.message,
    this.data,
  });

  bool? status;
  String? message;
  List<AddressData>? data;

  AddressResponse.fromMap(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <AddressData>[];
      json['data'].forEach((v) {
        data!.add(new AddressData.fromMap(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    if (this.data != null) {
      _data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return _data;
  }

  @override
  List<Object?> get props => [status, message, data];
}

class AddressData extends Equatable {
  AddressData(
      {this.id,
      this.userId,
      this.ezyAddressId,
      this.addressType,
      this.addressLine1,
      this.addressLine2,
      this.cityId,
      this.stateId,
      this.countryId,
      this.landmark,
      this.isDefault,
      this.pinCode,
      this.createdBy,
      this.updatedBy,
      this.deletedBy,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.displayAddressType,
      this.city,
      this.state,
      this.country});

  int? id;
  int? userId;
  int? ezyAddressId;
  int? addressType;
  String? addressLine1;
  String? addressLine2;
  int? cityId;
  int? stateId;
  int? countryId;
  String? landmark;
  int? isDefault;
  String? pinCode;
  int? createdBy;
  int? updatedBy;
  int? deletedBy;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  String? displayAddressType;
  City? city;
  StateData? state;
  Country? country;

  AddressData.fromMap(Map<String, dynamic> _data) {
    id = _data['id'];
    userId = _data['user_id'];
    ezyAddressId = _data['ezy_address_id'];
    addressType = _data['address_type'];
    addressLine1 = _data['address_line1'];
    addressLine2 = _data['address_line2'];
    cityId = _data['city_id'];
    stateId = _data['state_id'];
    countryId = _data['country_id'];
    landmark = _data['landmark'];
    isDefault = _data['is_default'];
    pinCode = _data['pincode'];
    createdBy = _data['created_by'];
    updatedBy = _data['updated_by'];
    deletedBy = _data['deleted_by'];
    createdAt = _data['created_at'];
    updatedAt = _data['updated_at'];
    deletedAt = _data['deleted_at'];
    displayAddressType = _data['display_address_type'];
    city = _data['city'] != null ? City.fromMap(_data['city']) : null;
    state = _data['state'] != null ? StateData.fromMap(_data['state']) : null;
    country =
        _data['country'] != null ? Country.fromMap(_data['country']) : null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['user_id'] = userId;
    _data['ezy_address_id'] = ezyAddressId;
    _data['address_type'] = addressType;
    _data['address_line1'] = addressLine1;
    _data['address_line2'] = addressLine2;
    _data['city_id'] = cityId;
    _data['state_id'] = stateId;
    _data['country_id'] = countryId;
    _data['landmark'] = landmark;
    _data['is_default'] = isDefault;
    _data['pincode'] = pinCode;
    _data['created_by'] = createdBy;
    _data['updated_by'] = updatedBy;
    _data['deleted_by'] = deletedBy;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['deleted_at'] = deletedAt;
    _data['display_address_type'] = displayAddressType;
    if (city != null) {
      _data['city'] = city?.toJson();
    }
    if (state != null) {
      _data['state'] = state?.toJson();
    }
    if (country != null) {
      _data['country'] = country?.toJson();
    }
    return _data;
  }

  @override
  List<Object?> get props => [
        id,
        userId,
        ezyAddressId,
        addressType,
        addressLine1,
        addressLine2,
        cityId,
        stateId,
        countryId,
        landmark,
        isDefault,
        pinCode,
        createdBy,
        updatedBy,
        deletedBy,
        createdAt,
        updatedAt,
        deletedAt,
        displayAddressType,
        city,
        state,
        country
      ];
}
