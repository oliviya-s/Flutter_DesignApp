class LoginModel {
  LoginModel({
    this.status,
    this.token,
    this.data,
    this.msg,});

  LoginModel.fromJson(dynamic json) {
    status = json['status'];
    token = json['token'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    msg = json['msg'];
  }
  bool? status;
  String? token;
  Data? data;
  String? msg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['token'] = token;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    map['msg'] = msg;
    return map;
  }

}

class Data {
  Data({
    this.id,
    this.firstName,
    this.lastName,
    this.houseName,
    this.place,
    this.pincode,
    this.mobileNumber,
    this.status,
    this.v,});

  Data.fromJson(dynamic json) {
    id = json['_id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    houseName = json['houseName'];
    place = json['place'];
    pincode = json['pinode'];
    mobileNumber = json['mobileNumber'];
    status = json['status'];
    v = json['__v'];
  }
  String? id;
  String? firstName;
  String? lastName;
  String? houseName;
  String? place;
  String? pincode;
  int? mobileNumber;
  String? status;
  int? v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['houseName'] = houseName;
    map['place'] = place;
    map['pincode'] = pincode;
    map['mobileNumber'] = mobileNumber;
    map['status'] = status;
    map['__v'] = v;
    return map;
  }

}