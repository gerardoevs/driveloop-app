import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String carToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
    int userId;
    String user;
    String email;
    String password;
    String userType;
    String createdAt;

    User({
        this.userId,
        this.user,
        this.email,
        this.password,
        this.userType,
        this.createdAt,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["userId"],
        user: json["user"],
        email: json["email"],
        password: json["password"],
        userType: json["userType"],
        createdAt: json["createdAt"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "user": user,
        "email": email,
        "password": password,
        "userType": userType,
        "createdAt": createdAt,
    };
}