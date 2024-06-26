// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

UserLogin userFromJson(String str) => UserLogin.fromJson(json.decode(str));

String userToJson(UserLogin data) => json.encode(data.toJson());

class UserLogin {
    String message;
    UserClass user;
    String token;
    bool status;

    UserLogin({
        required this.message,
        required this.user,
        required this.token,
        required this.status,
    });

    factory UserLogin.fromJson(Map<String, dynamic> json) => UserLogin(
        message: json["message"],
        user: UserClass.fromJson(json["user"]),
        token: json["token"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "user": user.toJson(),
        "token": token,
        "status": status,
    };
}

class UserClass {
    String id;
    String username;
    String email;
    String phoneNumber;
    String profileImage;

    UserClass({
        required this.id,
        required this.username,
        required this.email,
        required this.phoneNumber,
        required this.profileImage,
    });

    factory UserClass.fromJson(Map<String, dynamic> json) => UserClass(
        id: json["_id"],
        username: json["username"],
        email: json["email"],
        phoneNumber: json["phoneNumber"],
        profileImage: json["profileImage"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "username": username,
        "email": email,
        "phoneNumber": phoneNumber,
        "profileImage": profileImage,
    };
}


