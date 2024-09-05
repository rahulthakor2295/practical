import 'package:equatable/equatable.dart';

class SupportResponse extends Equatable {
  SupportResponse({
    this.status,
    this.message,
    this.data,
  });

  SupportResponse.fromMap(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];

    if (json['data'] != null) {
      data = <SupportResponseData>[];
      json['data'].forEach((v) {
        data!.add(new SupportResponseData.fromMap(v));
      });
    }
  }
  bool? status;
  String? message;
  List<SupportResponseData>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (this.data != null) {
      map['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return map;
  }

  @override
  List<Object?> get props => [status, message, data];
}

class SupportResponseData extends Equatable {
  SupportResponseData({
    this.id,
    this.question,
    this.answer,
    this.status,
    this.createdBy,
    this.updatedBy,
    this.deletedBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  SupportResponseData.fromMap(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    answer = json['answer'];
    status = json['status'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    deletedBy = json['deleted_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  int? id;
  String? question;
  String? answer;
  int? status;
  int? createdBy;
  int? updatedBy;
  String? deletedBy;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['question'] = question;
    _data['answer'] = answer;
    _data['status'] = status;
    _data['created_by'] = createdBy;
    _data['updated_by'] = updatedBy;
    _data['deleted_by'] = deletedBy;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['deleted_at'] = deletedAt;
    return _data;
  }

  List<Object?> get props => [
        id,
        status,
        question,
        answer,
        status,
        createdBy,
        updatedBy,
        deletedBy,
        createdAt,
        updatedAt,
        deletedAt,
      ];
}
