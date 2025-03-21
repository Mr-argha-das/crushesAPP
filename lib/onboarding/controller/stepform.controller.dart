import 'package:crush_dating/onboarding/model/userregister.model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterStepForm extends StateNotifier<UserRegisterModel> {
  RegisterStepForm(UserRegisterModel state) : super(state);

  // ✅ Methods to update user properties
  void updateUuid(String uuid) => state = state.copyWith(uuid: uuid);
  void updateEmailAddress(String email) =>
      state = state.copyWith(emailAddress: email);
  void updateFullName(String fullName) =>
      state = state.copyWith(fullName: fullName);
  void updateProfilePicture(String pictureUrl) =>
      state = state.copyWith(profilePicture: pictureUrl);
  void updateAge(String age) => state = state.copyWith(age: age);
  void updateGender(String gender) => state = state.copyWith(gender: gender);
  void updatePassword(String password) =>
      state = state.copyWith(password: password);
  void updateSexualOrientation(String orientation) =>
      state = state.copyWith(sexualOrientation: orientation);
  void updateLocationCity(String city) =>
      state = state.copyWith(locationCity: city);
  void updateLocationState(String newState) =>
      state = state.copyWith(locationState: newState);

  void updateFirstPrompt(String prompt) =>
      state = state.copyWith(firstPrompt: prompt);
  void updateSecondPrompt(String prompt) =>
      state = state.copyWith(secondPrompt: prompt);
  void updateThirdPrompt(String prompt) =>
      state = state.copyWith(thirdPrompt: prompt);

  // ✅ Methods for interests and qualities
  void addInterest(List<String> interest) =>
      state = state.copyWith(interests: interest);
  void addQuality(List<String> quality) =>
      state = state.copyWith(qualities: quality);

  void removeInterest(String interest) {
    state = state.copyWith(
        interests: state.interests.where((item) => item != interest).toList());
  }

  void removeQuality(String quality) {
    state = state.copyWith(
        qualities: state.qualities.where((item) => item != quality).toList());
  }
}

// ✅ StateNotifierProvider with all required fields
final userStepFormProvider =
    StateNotifierProvider<RegisterStepForm, UserRegisterModel>((ref) {
  return RegisterStepForm(UserRegisterModel(
    uuid: '',
    emailAddress: '',
    fullName: '',
    profilePicture: '',
    age: '',
    gender: '',
    password: '',
    sexualOrientation: '',
    locationCity: '',
    locationState: '',
    interests: [],
    qualities: [],
    firstPrompt: '',
    secondPrompt: '',
    thirdPrompt: '',
  ));
});
