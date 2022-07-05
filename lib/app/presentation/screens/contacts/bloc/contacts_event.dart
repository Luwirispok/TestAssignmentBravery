part of 'contacts_bloc.dart';

@freezed
class ContactsEvent with _$ContactsEvent {
  const factory ContactsEvent.init() = Init;
  const factory ContactsEvent.phoneClicked(String phone) = PhoneClicked;
  const factory ContactsEvent.topicChanged(DefaultForm topicForm) = TopicChanged;
  const factory ContactsEvent.emailChanged(EmailForm emailForm) = EmailChanged;
  const factory ContactsEvent.messageChanged(DefaultForm messageForm) = MessageChanged;
  const factory ContactsEvent.sendClicked() = SendClicked;

}