// To parse this JSON data, do
//
//     final userMatchResModel = userMatchResModelFromJson(jsonString);

import 'dart:convert';

UserMatchResModel userMatchResModelFromJson(String str) => UserMatchResModel.fromJson(json.decode(str));

String userMatchResModelToJson(UserMatchResModel data) => json.encode(data.toJson());

class UserMatchResModel {
    List<Datum> data;
    int status;

    UserMatchResModel({
        required this.data,
        required this.status,
    });

    factory UserMatchResModel.fromJson(Map<String, dynamic> json) => UserMatchResModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "status": status,
    };
}

class Datum {
    String id;
    String uuid;
    String emailAddress;
    String fullName;
    String profilePicture;
    String age;
    String gender;
    String sexualOrientation;
    String locationCity;
    String locationState;
    List<String> interests;
    List<String> qualities;
    String firstPrompt;
    String secondPrompt;
    String thirdPrompt;

    Datum({
        required this.id,
        required this.uuid,
        required this.emailAddress,
        required this.fullName,
        required this.profilePicture,
        required this.age,
        required this.gender,
        required this.sexualOrientation,
        required this.locationCity,
        required this.locationState,
        required this.interests,
        required this.qualities,
        required this.firstPrompt,
        required this.secondPrompt,
        required this.thirdPrompt,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        uuid: json["uuid"],
        emailAddress: json["email_address"],
        fullName: json["fullName"],
        profilePicture: json["profilePicture"],
        age: json["age"],
        gender: json["gender"],
        sexualOrientation: json["sexual_orientation"],
        locationCity: json["location_city"],
        locationState: json["location_state"],
        interests: List<String>.from(json["interests"].map((x) => x)),
        qualities: List<String>.from(json["qualities"].map((x) => x)),
        firstPrompt: json["firstPrompt"],
        secondPrompt: json["secondPrompt"],
        thirdPrompt: json["thirdPrompt"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "uuid": uuid,
        "email_address": emailAddress,
        "fullName": fullName,
        "profilePicture": profilePicture,
        "age": age,
        "gender": gender,
        "sexual_orientation": sexualOrientation,
        "location_city": locationCity,
        "location_state": locationState,
        "interests": List<dynamic>.from(interests.map((x) => x)),
        "qualities": List<dynamic>.from(qualities.map((x) => x)),
        "firstPrompt": firstPrompt,
        "secondPrompt": secondPrompt,
        "thirdPrompt": thirdPrompt,
    };
}
