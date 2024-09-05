import 'package:equatable/equatable.dart';

class LoginResponse extends Equatable {
  LoginResponse({
    this.status,
    this.message,
    this.loginData,
  });
  bool? status;
  String? message;
  LoginData? loginData;

  LoginResponse.fromMap(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    loginData = json['data'] != null ? LoginData.fromMap(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    if (loginData != null) {
      _data['data'] = loginData?.toJson();
    }
    return _data;
  }

  @override
  List<Object?> get props => [status, message, loginData];
}

class User extends Equatable {
  User({
    this.id,
    this.parentId,
    this.roleId,
    this.ezyUserId,
    this.firstName,
    this.email,
    this.emailVerifiedAt,
    this.mobileNumber,
    this.mobileVerifiedAt,
    this.avatar,
    this.status,
    this.designation,
    this.createdBy,
    this.updatedBy,
    this.deletedBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  int? id;
  int? parentId;
  int? roleId;
  int? ezyUserId;
  String? firstName;
  String? lastName;
  String? email;
  String? emailVerifiedAt;
  String? mobileNumber;
  String? mobileVerifiedAt;
  String? avatar;
  int? status;
  String? designation;
  String? createdBy;
  String? updatedBy;
  String? deletedBy;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  User.fromMap(Map<String, dynamic> json) {
    id = json['id'];
    parentId = json['parent_id'];
    roleId = json['role_id'];
    ezyUserId = json['ezy_user_id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    mobileNumber = json['mobile_number'];
    mobileVerifiedAt = json['mobile_verified_at'];
    avatar = json['avatar'];
    status = json['status'];
    designation = json['designation'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    deletedBy = json['deleted_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['parent_id'] = parentId;
    _data['role_id'] = roleId;
    _data['ezy_user_id'] = ezyUserId;
    _data['first_name'] = firstName;
    _data['last_name'] = lastName;
    _data['email'] = email;
    _data['email_verified_at'] = emailVerifiedAt;
    _data['mobile_number'] = mobileNumber;
    _data['mobile_verified_at'] = mobileVerifiedAt;
    _data['avatar'] = avatar;
    _data['status'] = status;
    _data['designation'] = designation;
    _data['created_by'] = createdBy;
    _data['updated_by'] = updatedBy;
    _data['deleted_by'] = deletedBy;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['deleted_at'] = deletedAt;

    return _data;
  }

  @override
  List<Object?> get props => [
        id,
        parentId,
        roleId,
        ezyUserId,
        firstName,
        lastName,
        email,
        emailVerifiedAt,
        mobileNumber,
        mobileVerifiedAt,
        avatar,
        status,
        designation,
        createdBy,
        updatedBy,
        deletedBy,
        createdAt,
        updatedAt,
        deletedAt,
      ];
}

class LoginData extends Equatable {
  LoginData({
    this.token,
    this.user,
    this.assetUrl,
  });
  String? token;
  User? user;
  String? assetUrl;

  LoginData.fromMap(Map<String, dynamic> json) {
    token = json['token'];
    user = json['user'] != null ? User.fromMap(json['user']) : null;
    assetUrl = json['asset_url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['token'] = token;
    if (user != null) {
      _data['user'] = user?.toJson();
    }
    _data['asset_url'] = assetUrl;
    return _data;
  }

  @override
  List<Object?> get props => [token, user, assetUrl];
}
