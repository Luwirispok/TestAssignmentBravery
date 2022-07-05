part of 'authorization_bloc.dart';

@freezed
class AuthorizationEvent with _$AuthorizationEvent {
  factory AuthorizationEvent.sendCodeClicked() = SendCodeClicked;
  factory AuthorizationEvent.phoneChanged(PhoneNumber phone) = PhoneChanged;
  factory AuthorizationEvent.backClicked() = BackClicked;
  factory AuthorizationEvent.privacyPolicyClicked() = PrivacyPolicyClicked;

}
