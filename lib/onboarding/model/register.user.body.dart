// To parse this JSON data, do
//
//     final registerModelBody = registerModelBodyFromJson(jsonString);

import 'dart:convert';

RegisterModelBody registerModelBodyFromJson(String str) => RegisterModelBody.fromJson(json.decode(str));

String registerModelBodyToJson(RegisterModelBody data) => json.encode(data.toJson());

class RegisterModelBody {
    String uuid;
    String emailAddress;
    String fullName;
    String profilePicture;
    String age;
    String gender;
    String password;
    String sexualOrientation;
    String locationCity;
    String locationState;
    List<String> interests;
    List<String> qualities;

    RegisterModelBody({
        required this.uuid,
        required this.emailAddress,
        required this.fullName,
        required this.profilePicture,
        required this.age,
        required this.gender,
        required this.password,
        required this.sexualOrientation,
        required this.locationCity,
        required this.locationState,
        required this.interests,
        required this.qualities,
    });

    factory RegisterModelBody.fromJson(Map<String, dynamic> json) => RegisterModelBody(
        uuid: json["uuid"],
        emailAddress: json["email_address"],
        fullName: json["fullName"],
        profilePicture: json["profilePicture"],
        age: json["age"],
        gender: json["gender"],
        password: json["password"],
        sexualOrientation: json["sexual_orientation"],
        locationCity: json["location_city"],
        locationState: json["location_state"],
        interests: List<String>.from(json["interests"].map((x) => x)),
        qualities: List<String>.from(json["qualities"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "email_address": emailAddress,
        "fullName": fullName,
        "profilePicture": profilePicture,
        "age": age,
        "gender": gender,
        "password": password,
        "sexual_orientation": sexualOrientation,
        "location_city": locationCity,
        "location_state": locationState,
        "interests": List<dynamic>.from(interests.map((x) => x)),
        "qualities": List<dynamic>.from(qualities.map((x) => x)),
    };
}
