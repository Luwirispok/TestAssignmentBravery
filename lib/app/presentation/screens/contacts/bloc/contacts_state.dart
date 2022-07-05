part of 'contacts_bloc.dart';

@freezed
class ContactsState extends BaseBlocState with _$ContactsState {
  factory ContactsState({
    BlocAction? action,
    @Default(false) isLoading,
    @Default(['Москва, Красноармейская слобода, д. 13']) List<String> addresses,
    @Default(['+7 900 888 72 99', '+7 920 345 77 88']) List<String> phones,
    @Default(DefaultForm.pure('')) DefaultForm topicForm,
    @Default(EmailForm.pure('')) EmailForm emailForm,
    @Default(DefaultForm.pure('')) DefaultForm messageForm,

  }) = _ContactsState;
}

class UnFocusAction extends BlocAction {}

