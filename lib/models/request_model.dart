import 'dart:convert';
import 'car_model.dart';
import 'customer_model.dart';

List<Request> requestFromJson(String str) => List<Request>.from(json.decode(str).map((x) => Request.fromJson(x)));

String requestToJson(List<Request> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Request {
    int requestId;
    Customer owner;
    Customer customer;
    Car car;
    int days;
    String requestStatus;
    String requestTime;

    Request({
        this.requestId,
        this.owner,
        this.customer,
        this.car,
        this.days,
        this.requestStatus,
        this.requestTime,
    });

    factory Request.fromJson(Map<String, dynamic> json) => Request(
        requestId: json["requestId"],
        owner: Customer.fromJson(json["owner"]),
        customer: Customer.fromJson(json["customer"]),
        car: Car.fromJson(json["car"]),
        days: json["days"],
        requestStatus: json["requestStatus"],
        requestTime: json["requestTime"],
    );

    Map<String, dynamic> toJson() => {
        "requestId": requestId,
        "owner": owner.toJson(),
        "customer": customer.toJson(),
        "car": car.toJson(),
        "days": days,
        "requestStatus": requestStatus,
        "requestTime": requestTime,
    };
}