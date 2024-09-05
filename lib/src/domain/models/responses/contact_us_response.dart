import 'package:equatable/equatable.dart';

class ContactUsResponse extends Equatable {
  ContactUsResponse({
    this.status,
    this.message,
    this.data,
  });

  late final bool? status;
  late final String? message;
  List<ContactUsData>? data;

  ContactUsResponse.fromMap(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <ContactUsData>[];
      json['data'].forEach((v) {
        data!.add(new ContactUsData.fromMap(v));
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

class ContactUsData extends Equatable {
  ContactUsData({
    this.title,
    this.message,
  });

  late final String? title;
  late final String? message;

  ContactUsData.fromMap(Map<String, dynamic> json) {
    title = json['key'];
    message = json['value'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['key'] = title;
    _data['value'] = message;
    return _data;
  }

  @override
  List<Object?> get props => [title, message];
}
