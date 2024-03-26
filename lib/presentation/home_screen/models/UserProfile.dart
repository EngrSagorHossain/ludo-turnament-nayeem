import 'dart:convert';
/// user : {"id":2,"role_id":2,"full_name":"arnab","phone":"01628993875","college_name":"dhaka college","hsc_exam_year":"2017","email":"admin1@gmail.com","avatar":"users/default.png","is_ban":0,"balance":"0","package_status":"active","profile_image":null,"created_at":"2024-02-01T18:38:46.000000Z","updated_at":"2024-02-01T18:38:46.000000Z"}
/// token : "12|vQhEZnvBNG942ZT7YsnTZ59UM2d319YEz5CiYrccfb948678"

UserProfile userProfileFromJson(String str) => UserProfile.fromJson(json.decode(str));
String userProfileToJson(UserProfile data) => json.encode(data.toJson());
class UserProfile {
  UserProfile({
      User? user, 
      String? token,}){
    _user = user;
    _token = token;
}

  UserProfile.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _token = json['token'];
  }
  User? _user;
  String? _token;
UserProfile copyWith({  User? user,
  String? token,
}) => UserProfile(  user: user ?? _user,
  token: token ?? _token,
);
  User? get user => _user;
  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    map['token'] = _token;
    return map;
  }

}

/// id : 2
/// role_id : 2
/// full_name : "arnab"
/// phone : "01628993875"
/// college_name : "dhaka college"
/// hsc_exam_year : "2017"
/// email : "admin1@gmail.com"
/// avatar : "users/default.png"
/// is_ban : 0
/// balance : "0"
/// package_status : "active"
/// profile_image : null
/// created_at : "2024-02-01T18:38:46.000000Z"
/// updated_at : "2024-02-01T18:38:46.000000Z"

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());
class User {
  User({
      num? id, 
      num? roleId, 
      String? fullName, 
      String? phone, 
      String? collegeName, 
      String? hscExamYear, 
      String? email, 
      String? avatar, 
      num? isBan, 
      String? balance, 
      String? packageStatus, 
      dynamic profileImage, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _roleId = roleId;
    _fullName = fullName;
    _phone = phone;
    _collegeName = collegeName;
    _hscExamYear = hscExamYear;
    _email = email;
    _avatar = avatar;
    _isBan = isBan;
    _balance = balance;
    _packageStatus = packageStatus;
    _profileImage = profileImage;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _roleId = json['role_id'];
    _fullName = json['full_name'];
    _phone = json['phone'];
    _collegeName = json['college_name'];
    _hscExamYear = json['hsc_exam_year'];
    _email = json['email'];
    _avatar = json['avatar'];
    _isBan = json['is_ban'];
    _balance = json['balance'];
    _packageStatus = json['package_status'];
    _profileImage = json['profile_image'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  num? _roleId;
  String? _fullName;
  String? _phone;
  String? _collegeName;
  String? _hscExamYear;
  String? _email;
  String? _avatar;
  num? _isBan;
  String? _balance;
  String? _packageStatus;
  dynamic _profileImage;
  String? _createdAt;
  String? _updatedAt;
User copyWith({  num? id,
  num? roleId,
  String? fullName,
  String? phone,
  String? collegeName,
  String? hscExamYear,
  String? email,
  String? avatar,
  num? isBan,
  String? balance,
  String? packageStatus,
  dynamic profileImage,
  String? createdAt,
  String? updatedAt,
}) => User(  id: id ?? _id,
  roleId: roleId ?? _roleId,
  fullName: fullName ?? _fullName,
  phone: phone ?? _phone,
  collegeName: collegeName ?? _collegeName,
  hscExamYear: hscExamYear ?? _hscExamYear,
  email: email ?? _email,
  avatar: avatar ?? _avatar,
  isBan: isBan ?? _isBan,
  balance: balance ?? _balance,
  packageStatus: packageStatus ?? _packageStatus,
  profileImage: profileImage ?? _profileImage,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  num? get roleId => _roleId;
  String? get fullName => _fullName;
  String? get phone => _phone;
  String? get collegeName => _collegeName;
  String? get hscExamYear => _hscExamYear;
  String? get email => _email;
  String? get avatar => _avatar;
  num? get isBan => _isBan;
  String? get balance => _balance;
  String? get packageStatus => _packageStatus;
  dynamic get profileImage => _profileImage;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['role_id'] = _roleId;
    map['full_name'] = _fullName;
    map['phone'] = _phone;
    map['college_name'] = _collegeName;
    map['hsc_exam_year'] = _hscExamYear;
    map['email'] = _email;
    map['avatar'] = _avatar;
    map['is_ban'] = _isBan;
    map['balance'] = _balance;
    map['package_status'] = _packageStatus;
    map['profile_image'] = _profileImage;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}