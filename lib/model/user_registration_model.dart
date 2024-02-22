// To parse this JSON data, do
//
//     final userRegistration = userRegistrationFromJson(jsonString);

import 'dart:convert';

UserRegistration userRegistrationFromJson(String str) => UserRegistration.fromJson(json.decode(str));

String userRegistrationToJson(UserRegistration data) => json.encode(data.toJson());

class UserRegistration {
    var message;
    User user;
    var status;

    UserRegistration({
        required this.message,
        required this.user,
        required this.status,
    });

    factory UserRegistration.fromJson(Map<String, dynamic> json) => UserRegistration(
        message: json["message"],
        user: User.fromJson(json["user"]),
        status: json["success"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "user": user.toJson(),
        "success": status,
    };
}

class User {
    dynamic id;
    dynamic username;
    dynamic email;
    dynamic phoneNumber;
    dynamic profileImage;

    User({
        required this.id,
        required this.username,
        required this.email,
        required this.phoneNumber,
        required this.profileImage,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
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
