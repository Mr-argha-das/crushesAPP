class UserRegisterModel {
  final String uuid;
  final String emailAddress;
  final String fullName;
  final String profilePicture;
  final String age;
  final String gender;
  final String password;
  final String sexualOrientation;
  final String locationCity;
  final String locationState;
  final List<String> interests;
  final List<String> qualities;

  UserRegisterModel({
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

  // Method to copy the object with optional updated values
  UserRegisterModel copyWith({
    String? uuid,
    String? emailAddress,
    String? fullName,
    String? profilePicture,
    String? age,
    String? gender,
    String? password,
    String? sexualOrientation,
    String? locationCity,
    String? locationState,
    List<String>? interests,
    List<String>? qualities,
  }) {
    return UserRegisterModel(
      uuid: uuid ?? this.uuid,
      emailAddress: emailAddress ?? this.emailAddress,
      fullName: fullName ?? this.fullName,
      profilePicture: profilePicture ?? this.profilePicture,
      age: age ?? this.age,
      gender: gender ?? this.gender,
      password: password ?? this.password,
      sexualOrientation: sexualOrientation ?? this.sexualOrientation,
      locationCity: locationCity ?? this.locationCity,
      locationState: locationState ?? this.locationState,
      interests: interests ?? this.interests,
      qualities: qualities ?? this.qualities,
    );
  }

  // Factory constructor to create a UserRegisterModel from JSON
  factory UserRegisterModel.fromJson(Map<String, dynamic> json) {
    return UserRegisterModel(
      uuid: json['uuid'],
      emailAddress: json['email_address'],
      fullName: json['fullName'],
      profilePicture: json['profilePicture'],
      age: json['age'],
      gender: json['gender'],
      password: json['password'],
      sexualOrientation: json['sexual_orientation'],
      locationCity: json['location_city'],
      locationState: json['location_state'],
      interests: List<String>.from(json['interests']),
      qualities: List<String>.from(json['qualities']),
    );
  }

  // Method to convert to JSON
  Map<String, dynamic> toJson() {
    return {
      'uuid': uuid,
      'email_address': emailAddress,
      'fullName': fullName,
      'profilePicture': profilePicture,
      'age': age,
      'gender': gender,
      'password': password,
      'sexual_orientation': sexualOrientation,
      'location_city': locationCity,
      'location_state': locationState,
      'interests': interests,
      'qualities': qualities,
    };
  }
}
