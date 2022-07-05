part of 'confirm_phone_bloc.dart';

@freezed
class ConfirmPhoneEvent with _$ConfirmPhoneEvent{
  factory ConfirmPhoneEvent.codeChanged(String code) = CodeChanged;
  factory ConfirmPhoneEvent.init() = Init;
  factory ConfirmPhoneEvent.backClicked() = BackClicked;
  factory ConfirmPhoneEvent.enterClicked() = EnterClicked;
  factory ConfirmPhoneEvent.resendCodeClicked() = ResendCodeClicked;
  factory ConfirmPhoneEvent.countOfSecondsToResendChanged(int countSecondsToResendChanged) = CountOfSecondsToResendChanged;

}
