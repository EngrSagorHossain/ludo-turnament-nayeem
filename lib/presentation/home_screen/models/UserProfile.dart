import 'dart:convert';

/// user : {"id":1,"role_id":1,"name":"nayeem","image":"sdfsadf","phone":"01941949288","username":"nayeem","address":"alksdfksadf","rating":"120","level":"20","total_wins":"320","total_coins":"2130","email":"nayeem@gmail.com","avatar":"users/default.png"}
/// token : "2|PFni5CUUNIxXtfsp9xwZAtm1QQE2jpF8yQY1EnVOfd8d69c9"

UserProfile userProfileFromJson(String str) =>
    UserProfile.fromJson(json.decode(str));
String userProfileToJson(UserProfile data) => json.encode(data.toJson());

class UserProfile {
  UserProfile({
    User? user,
    String? token,
  }) {
    _user = user;
    _token = token;
  }

  UserProfile.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _token = json['token'];
  }
  User? _user;
  String? _token;
  UserProfile copyWith({
    User? user,
    String? token,
  }) =>
      UserProfile(
        user: user ?? _user,
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

/// id : 1
/// role_id : 1
/// name : "nayeem"
/// image : "sdfsadf"
/// phone : "01941949288"
/// username : "nayeem"
/// address : "alksdfksadf"
/// rating : "120"
/// level : "20"
/// total_wins : "320"
/// total_coins : "2130"
/// email : "nayeem@gmail.com"
/// avatar : "users/default.png"

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    num? id,
    num? roleId,
    String? name,
    String? image,
    String? phone,
    String? username,
    String? address,
    String? rating,
    String? level,
    String? totalWins,
    String? totalCoins,
    String? email,
    String? avatar,
  }) {
    _id = id;
    _roleId = roleId;
    _name = name;
    _image = image;
    _phone = phone;
    _username = username;
    _address = address;
    _rating = rating;
    _level = level;
    _totalWins = totalWins;
    _totalCoins = totalCoins;
    _email = email;
    _avatar = avatar;
  }

  User.fromJson(dynamic json) {
    _id = json['id'];
    _roleId = json['role_id'];
    _name = json['name'];
    _image = json['image'];
    _phone = json['phone'];
    _username = json['username'];
    _address = json['address'];
    _rating = json['rating'];
    _level = json['level'];
    _totalWins = json['total_wins'];
    _totalCoins = json['total_coins'];
    _email = json['email'];
    _avatar = json['avatar'];
  }
  num? _id;
  num? _roleId;
  String? _name;
  String? _image;
  String? _phone;
  String? _username;
  String? _address;
  String? _rating;
  String? _level;
  String? _totalWins;
  String? _totalCoins;
  String? _email;
  String? _avatar;
  User copyWith({
    num? id,
    num? roleId,
    String? name,
    String? image,
    String? phone,
    String? username,
    String? address,
    String? rating,
    String? level,
    String? totalWins,
    String? totalCoins,
    String? email,
    String? avatar,
  }) =>
      User(
        id: id ?? _id,
        roleId: roleId ?? _roleId,
        name: name ?? _name,
        image: image ?? _image,
        phone: phone ?? _phone,
        username: username ?? _username,
        address: address ?? _address,
        rating: rating ?? _rating,
        level: level ?? _level,
        totalWins: totalWins ?? _totalWins,
        totalCoins: totalCoins ?? _totalCoins,
        email: email ?? _email,
        avatar: avatar ?? _avatar,
      );
  num? get id => _id;
  num? get roleId => _roleId;
  String? get name => _name;
  String? get image => _image;
  String? get phone => _phone;
  String? get username => _username;
  String? get address => _address;
  String? get rating => _rating;
  String? get level => _level;
  String? get totalWins => _totalWins;
  String? get totalCoins => _totalCoins;
  String? get email => _email;
  String? get avatar => _avatar;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['role_id'] = _roleId;
    map['name'] = _name;
    map['image'] = _image;
    map['phone'] = _phone;
    map['username'] = _username;
    map['address'] = _address;
    map['rating'] = _rating;
    map['level'] = _level;
    map['total_wins'] = _totalWins;
    map['total_coins'] = _totalCoins;
    map['email'] = _email;
    map['avatar'] = _avatar;
    return map;
  }
}
