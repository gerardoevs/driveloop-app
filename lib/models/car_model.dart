import 'dart:convert';
import 'customer_model.dart';

List<Car> carFromJson(String str) => List<Car>.from(json.decode(str).map((x) => Car.fromJson(x)));

String carToJson(List<Car> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Car {
    int carId;
    Customer owner;
    String brand;
    String model;
    String carClass;
    String year;
    int capacity;
    String fuel;
    String transmission;
    String plate;
    String image;
    int fare;
    String carStatus;

    Car({
        this.carId,
        this.owner,
        this.brand,
        this.model,
        this.carClass,
        this.year,
        this.capacity,
        this.fuel,
        this.transmission,
        this.plate,
        this.image,
        this.fare,
        this.carStatus,
    });

    factory Car.fromJson(Map<String, dynamic> json) => Car(
        carId: json["carId"],
        owner: Customer.fromJson(json["owner"]),
        brand: json["brand"],
        model: json["model"],
        carClass: json["carClass"],
        year: json["year"],
        capacity: json["capacity"],
        fuel: json["fuel"],
        transmission: json["transmission"],
        plate: json["plate"],
        image: json["image"],
        fare: json["fare"],
        carStatus: json["carStatus"],
    );

    Map<String, dynamic> toJson() => {
        "carId": carId,
        "owner": owner.toJson(),
        "brand": brand,
        "model": model,
        "carClass": carClass,
        "year": year,
        "capacity": capacity,
        "fuel": fuel,
        "transmission": transmission,
        "plate": plate,
        "image": image,
        "fare": fare,
        "carStatus": carStatus,
    };
}