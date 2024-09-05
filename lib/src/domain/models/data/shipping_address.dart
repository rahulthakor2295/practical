class ShippingAddress {
  int? id;
  int? orderId;
  dynamic shippingMethod;
  String? name;
  String? email;
  String? phone;
  String? cityName;
  String? stateName;
  String? countryName;
  String? zipCode;
  String? landmark;
  String? address;
  String? address1;
  String? address2;
  String? addressType;
  String? isDefault;
  int? addressId;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  ShippingAddress(
      {this.id,
      this.orderId,
      this.shippingMethod,
      this.name,
      this.email,
      this.phone,
      this.cityName,
      this.stateName,
      this.countryName,
      this.zipCode,
      this.landmark,
      this.address,
      this.address1,
      this.address2,
      this.addressType,
      this.isDefault,
      this.addressId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  ShippingAddress.fromMap(Map<String, dynamic> json) {
    id = json['id'];
    orderId = json['order_id'];
    shippingMethod = json['shipping_method'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    cityName = json['city_name'];
    stateName = json['state_name'];
    countryName = json['country_name'];
    zipCode = json['zip_code'];
    landmark = json['landmark'];
    address = json['address'];
    address1 = json['address1'];
    address2 = json['address2'];
    addressType = json['address_type'];
    isDefault = json['is_default'];
    addressId = json['address_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['order_id'] = this.orderId;
    data['shipping_method'] = this.shippingMethod;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['city_name'] = this.cityName;
    data['state_name'] = this.stateName;
    data['country_name'] = this.countryName;
    data['zip_code'] = this.zipCode;
    data['landmark'] = this.landmark;
    data['address'] = this.address;
    data['address1'] = this.address1;
    data['address2'] = this.address2;
    data['address_type'] = this.addressType;
    data['is_default'] = this.isDefault;
    data['address_id'] = this.addressId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
