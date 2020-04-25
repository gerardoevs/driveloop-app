import 'dart:convert';
import 'package:Driveloop/models/user_model.dart';

List<Customer> customerFromJson(String str) => List<Customer>.from(json.decode(str).map((x) => Customer.fromJson(x)));

String customerToJson(List<Customer> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Customer {
    int ownerId;
    User user;
    String firstName;
    String lastName;
    String phone;
    String dui;
    String licence;
    DateTime birthDate;
    String city;
    String location;
    int customerId;

    Customer({
        this.ownerId,
        this.user,
        this.firstName,
        this.lastName,
        this.phone,
        this.dui,
        this.licence,
        this.birthDate,
        this.city,
        this.location,
        this.customerId,
    });

    factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        ownerId: json["ownerId"] == null ? null : json["ownerId"],
        user: User.fromJson(json["user"]),
        firstName: json["firstName"],
        lastName: json["lastName"],
        phone: json["phone"],
        dui: json["dui"],
        licence: json["licence"],
        birthDate: DateTime.parse(json["birthDate"]),
        city: json["city"],
        location: json["location"],
        customerId: json["customerId"] == null ? null : json["customerId"],
    );

    Map<String, dynamic> toJson() => {
        "ownerId": ownerId == null ? null : ownerId,
        "user": user.toJson(),
        "firstName": firstName,
        "lastName": lastName,
        "phone": phone,
        "dui": dui,
        "licence": licence,
        "birthDate": "${birthDate.year.toString().padLeft(4, '0')}-${birthDate.month.toString().padLeft(2, '0')}-${birthDate.day.toString().padLeft(2, '0')}",
        "city": city,
        "location": location,
        "customerId": customerId == null ? null : customerId,
    };
}