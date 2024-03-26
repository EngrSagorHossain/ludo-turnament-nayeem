import 'dart:convert';

/// user : {"id":1,"role_id":"1","name":"sagor","image":"image/HLRGWkWcGE0m3e0rfNqXiJHfwGTXCr5ArGOUZ83n.png","phone":"01941949255","username":"sagor","address":"dfsadf","rating":"0","level":"0","total_wins":"0","total_coins":"0","email":"sagor@gmail.com","avatar":"users/default.png","created_at":"2024-03-26T20:52:21.000000Z","updated_at":"2024-03-26T20:52:21.000000Z"}
/// token : "6|2wYLz7xRzJ7yFQA8LHq9Sli0Q6rZhPL7kKYk9CCC2a80125e"

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
/// role_id : "1"
/// name : "sagor"
/// image : "image/HLRGWkWcGE0m3e0rfNqXiJHfwGTXCr5ArGOUZ83n.png"
/// phone : "01941949255"
/// username : "sagor"
/// address : "dfsadf"
/// rating : "0"
/// level : "0"
/// total_wins : "0"
/// total_coins : "0"
/// email : "sagor@gmail.com"
/// avatar : "users/default.png"
/// created_at : "2024-03-26T20:52:21.000000Z"
/// updated_at : "2024-03-26T20:52:21.000000Z"

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    num? id,
    String? roleId,
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
    String? createdAt,
    String? updatedAt,
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
    _createdAt = createdAt;
    _updatedAt = updatedAt;
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
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _roleId;
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
  String? _createdAt;
  String? _updatedAt;
  User copyWith({
    num? id,
    String? roleId,
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
    String? createdAt,
    String? updatedAt,
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
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  String? get roleId => _roleId;
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
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

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
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}
